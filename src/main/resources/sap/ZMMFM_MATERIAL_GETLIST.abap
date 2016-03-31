*----------------------------------------------------------------------*
* Project        : MuleSoft                                            *
* Requirement N°.: JIRA->SAPINFRA-8 / Redmine->#3479                   *
* Function Group : ZMMFG_MATERIAL                                      *
* Function Module: ZMMFM_MATERIAL_GETLIST                              *
* Created by     : Martín E. Isnardi                                   *
* Creation date  : 10.03.2016                                          *
* Description    : Get list of Materials                               *
* Transport      : IDEK900068                                          *
*----------------------------------------------------------------------*
* Modified by    :                                                     *
* Requirement N° :                                                     *
* Change ID      :                                                     *
* Date           : dd.mm.aaaa                                          *
* Description    :                                                     *
* Transport      :                                                     *
*----------------------------------------------------------------------*
FUNCTION zmmfm_material_getlist.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(IV_FROM_DATE) TYPE  MSSCONNDATE OPTIONAL
*"     VALUE(IV_MAT_ID) TYPE  MATNR OPTIONAL
*"  EXPORTING
*"     VALUE(ES_RETURN) TYPE  BAPIRET2
*"  TABLES
*"      T_MARA TYPE  ZMMTTY_ENH_MARA OPTIONAL
*"  EXCEPTIONS
*"      INPUT_NOT_PROVIDED
*"----------------------------------------------------------------------

**----------------------------------------------------------------------*
* Function Module ZMULE_MATERIAL_GETLIST *
*----------------------------------------------------------------------*
* *
* ID-Reference: MuleSoft templates *
* *
* This BAPI aims to return list of materials by either given creation *
* or last change date/time OR by material ID. Only materials that are *
* not marked for deletion are returned. *
*----------------------------------------------------------------------*
* Change Log: *
* *
* Who Date Text *
* MMARUSKIN 03.07.2014 Init creation. *
*----------------------------------------------------------------------*
* Global data declarations

  CONSTANTS: lc_msg_cls TYPE sy-msgid VALUE 'ZMC_ENGTEMPLATES',
             lc_tz_utc  TYPE tznzone  VALUE 'UTC'.

  DATA: ls_mara         TYPE zmmst_enh_mara,
        ls_chgdoc       TYPE cdred,
        lt_chgdoc       TYPE TABLE OF cdred,
        lt_chgdoc_tmp   TYPE TABLE OF cdred,
        lt_makt         TYPE TABLE OF makt,
        ls_makt         TYPE makt,
        lv_sel(1)       TYPE c,
        lv_date         TYPE sy-datum,
        lv_date_tmp(10) TYPE c,
        lv_time         TYPE cduzeit,
        lv_time_tmp(8)  TYPE c,
        lv_cdhdrobj     TYPE cdhdr-objectid,
        lv_msg_p1       TYPE sy-msgv1,
        lv_msg_ty       TYPE sy-msgty,
        lv_msg_no       TYPE sy-msgno,
        lv_systz        TYPE timezone,
        lv_tmst         TYPE tzonref-tstamps.


  CLEAR: ls_mara,
         ls_chgdoc,
         ls_makt,
         lv_sel,
         lv_date,
         lv_date_tmp,
         lv_time,
         lv_time_tmp,
         lv_cdhdrobj,
         lv_msg_p1,
         lv_msg_ty,
         lv_msg_no,
         lv_systz,
         lv_tmst.

  REFRESH: lt_chgdoc,
           lt_chgdoc_tmp,
           lt_makt.

*- Input parameter check
  IF iv_from_date IS INITIAL AND iv_mat_id IS INITIAL.
    RAISE input_not_provided.	"input data for selection is not provided "#EC RAISE_OK
  ELSE.
    IF NOT iv_from_date IS INITIAL.
      lv_sel = 'D'. "by date
    ELSE.
      TRANSLATE iv_mat_id TO UPPER CASE.
      lv_sel = 'I'. "by ID
      CALL FUNCTION 'CONVERSION_EXIT_MATN1_INPUT'
        EXPORTING
          input  = iv_mat_id
        IMPORTING
          output = iv_mat_id.
    ENDIF.
*- Get time zone of SAP server, later used for convertion to UTC
    CALL FUNCTION 'GET_SYSTEM_TIMEZONE' ##FM_SUBRC_OK
      IMPORTING
        timezone            = lv_systz
      EXCEPTIONS
        customizing_missing = 1
        OTHERS              = 2.
  ENDIF.

*- Main processing
  CASE lv_sel.
    WHEN 'D'. "mode for materials selected by parameter IV_FROM_DATE
*- Derive date/time from YYYY-MM-DDTHH:MM:SS:SSSZ
      lv_date_tmp = iv_from_date(10).
      REPLACE ALL OCCURRENCES OF '-' IN lv_date_tmp WITH ''.
      lv_date = lv_date_tmp.
      lv_time_tmp = iv_from_date+11(8).
      REPLACE ALL OCCURRENCES OF ':' IN lv_time_tmp WITH ''.
      lv_time = lv_time_tmp.
*- Convert given UTC format of time to server time zone
      CONVERT DATE lv_date TIME lv_time INTO TIME STAMP lv_tmst TIME ZONE lc_tz_utc.
      CONVERT TIME STAMP lv_tmst TIME ZONE lv_systz INTO DATE lv_date TIME lv_time.
*- Select initial list of materials
      IF lv_date IS NOT INITIAL.
        CLEAR: t_mara, t_mara[].
        SELECT * FROM mara APPENDING CORRESPONDING FIELDS OF TABLE t_mara WHERE ersda GE lv_date. "Created On
        SELECT * FROM mara APPENDING CORRESPONDING FIELDS OF TABLE t_mara WHERE laeda GE lv_date. "Changed On
        SORT t_mara ASCENDING BY matnr.
        DELETE ADJACENT DUPLICATES FROM t_mara.
      ENDIF.
*- Get changes for list of materials
      LOOP AT t_mara INTO ls_mara WHERE matnr IS NOT INITIAL.
        lv_cdhdrobj = ls_mara-matnr.
        CLEAR: lt_chgdoc_tmp.
        CALL FUNCTION 'CHANGEDOCUMENT_READ' ##FM_SUBRC_OK
          EXPORTING
            objectclass                = 'MATERIAL'
            objectid                   = lv_cdhdrobj
            date_of_change             = lv_date
            time_of_change             = lv_time "already in server time
          TABLES
            editpos                    = lt_chgdoc_tmp
          EXCEPTIONS
            no_position_found          = 1
            wrong_access_to_archive    = 2
            time_zone_conversion_error = 3
            OTHERS                     = 4.
        IF lt_chgdoc_tmp IS NOT INITIAL.
          APPEND LINES OF lt_chgdoc_tmp TO lt_chgdoc.
        ENDIF.
      ENDLOOP.
*- Get rid of entries do not match given time (all times in UTC)
      DELETE lt_chgdoc WHERE utime EQ lv_time.
*- Convert date/time of creation/change to UTC from whatever SAP server time zone is
      LOOP AT lt_chgdoc INTO ls_chgdoc.
        CONVERT DATE ls_chgdoc-udate TIME ls_chgdoc-utime INTO TIME STAMP lv_tmst TIME ZONE lv_systz.
        CONVERT TIME STAMP lv_tmst TIME ZONE lc_tz_utc INTO DATE ls_chgdoc-udate TIME ls_chgdoc-utime.
        MODIFY lt_chgdoc FROM ls_chgdoc.
      ENDLOOP.
*- Get material's text
      SELECT matnr maktx
        FROM makt
        INTO CORRESPONDING FIELDS OF TABLE lt_makt
        FOR ALL ENTRIES IN t_mara
        WHERE matnr EQ t_mara-matnr
          AND spras EQ sy-langu.
      IF sy-dbcnt NE 0.
        LOOP AT t_mara.
          CLEAR ls_makt.
          READ TABLE lt_makt INTO ls_makt WITH KEY matnr = t_mara-matnr.
          IF sy-subrc EQ 0.
            t_mara-maktx = ls_makt-maktx.
            MODIFY t_mara.
          ENDIF.
        ENDLOOP.
      ENDIF.
*- Return data
      LOOP AT t_mara.
        SORT lt_chgdoc DESCENDING BY changenr.
        READ TABLE lt_chgdoc INTO ls_chgdoc WITH KEY objectid = t_mara-matnr.
        IF sy-subrc NE 0.
          DELETE TABLE t_mara.
        ELSE.
*- Create date of last modification into format YYYY-MM-DDTHH:MM:SS:SSSZ
          IF t_mara-laeda IS INITIAL. "by Creation
            t_mara-ctime = ls_chgdoc-utime. "creation
            CONCATENATE t_mara-ersda(4) '-' t_mara-ersda+4(2) '-' t_mara-ersda+6(2) 'T'
                        t_mara-ctime(2) ':' t_mara-ctime+2(2) ':' t_mara-ctime+4(2) 'Z'
                        INTO t_mara-last_modif_date.
          ELSE. "by change
            t_mara-utime = ls_chgdoc-utime. "change
            CONCATENATE t_mara-laeda(4) '-' t_mara-laeda+4(2) '-' t_mara-laeda+6(2) 'T'
                        t_mara-utime(2) ':' t_mara-utime+2(2) ':' t_mara-utime+4(2) 'Z'
                        INTO t_mara-last_modif_date.
          ENDIF.
          MODIFY t_mara.
        ENDIF.
      ENDLOOP.

    WHEN 'I'. "mode for particular material
*- Select material by its ID
      SELECT *
        FROM mara
        INTO CORRESPONDING FIELDS OF TABLE t_mara
        WHERE matnr EQ iv_mat_id.
      IF sy-subrc EQ 0.
*- Get material's text
        SELECT matnr maktx INTO CORRESPONDING FIELDS OF TABLE lt_makt
          FROM makt FOR ALL ENTRIES IN t_mara
         WHERE matnr EQ t_mara-matnr
           AND spras = sy-langu.
        IF sy-dbcnt NE 0.
          LOOP AT t_mara.
            CLEAR ls_makt.
            READ TABLE lt_makt INTO ls_makt WITH KEY matnr = t_mara-matnr.
            IF sy-subrc EQ 0.
              t_mara-maktx = ls_makt-maktx.
              MODIFY t_mara.
            ENDIF.
          ENDLOOP.
        ENDIF.
*- Get changes for list of materials
        lv_cdhdrobj = iv_mat_id.
        CALL FUNCTION 'CHANGEDOCUMENT_READ' ##FM_SUBRC_OK
          EXPORTING
            objectclass                = 'MATERIAL'
            objectid                   = lv_cdhdrobj
          TABLES
            editpos                    = lt_chgdoc
          EXCEPTIONS
            no_position_found          = 1
            wrong_access_to_archive    = 2
            time_zone_conversion_error = 3
            OTHERS                     = 4.
*- Get last change
        SORT lt_chgdoc DESCENDING BY changenr.
*- Convert date/time of creation/change to UTC from whatever SAP server time zone is
        LOOP AT lt_chgdoc INTO ls_chgdoc.
          CONVERT DATE ls_chgdoc-udate TIME ls_chgdoc-utime INTO TIME STAMP lv_tmst TIME ZONE lv_systz.
          CONVERT TIME STAMP lv_tmst TIME ZONE lc_tz_utc INTO DATE ls_chgdoc-udate TIME ls_chgdoc-utime.
          MODIFY lt_chgdoc FROM ls_chgdoc.
        ENDLOOP.
        READ TABLE lt_chgdoc INTO ls_chgdoc INDEX 1.
        t_mara-utime = ls_chgdoc-utime.
        IF t_mara-laeda IS INITIAL. "in case material wasn't changed yet
          t_mara-laeda = t_mara-ersda.
        ENDIF.
        CONCATENATE t_mara-laeda(4) '-' t_mara-laeda+4(2) '-' t_mara-laeda+6(2) 'T'
                    t_mara-utime(2) ':' t_mara-utime+2(2) ':' t_mara-utime+4(2) 'Z'
                    INTO t_mara-last_modif_date.
        MODIFY t_mara INDEX 1.
      ENDIF.
    WHEN OTHERS.
  ENDCASE.

*- Filter out records having "Flag Material for Deletion at Client Level" set
  DELETE t_mara WHERE lvorm EQ 'X'.
*- Error handling
  IF t_mara IS NOT INITIAL. "ok: materials found
    DESCRIBE TABLE t_mara LINES lv_msg_p1.
    lv_msg_ty = 'I'.
    lv_msg_no = '201'.
  ELSE. "problem: nothing found!
    IF NOT lv_msg_p1 IS INITIAL.
      lv_msg_p1 = iv_from_date.
    ELSEIF NOT iv_mat_id IS INITIAL.
      lv_msg_p1 = iv_mat_id.
    ENDIF.
    lv_msg_ty = 'E'.
    lv_msg_no = '200'.
  ENDIF.
  CALL FUNCTION 'BALW_BAPIRETURN_GET2'
    EXPORTING
      type      = lv_msg_ty
      cl        = lc_msg_cls
      number    = lv_msg_no
      par1      = lv_msg_p1
      parameter = ''
      field     = ''
    IMPORTING
      return    = es_return.

ENDFUNCTION.
