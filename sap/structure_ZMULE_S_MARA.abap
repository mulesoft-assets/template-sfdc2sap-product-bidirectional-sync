




        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________


        ZMULE_S_MARA
          Short description:MULESOFT: Enhanced structure for material data
          Structure
          Active version


        Field Structure
          Number of fields: 215
          Total of field lengths: 1528

        Component       K Type Length TypName
        Short Text
        ____________________________________________________________
        MANDT             CLNT      3 MANDT
         Client
        MATNR             CHAR     18 MATNR
         Material Number
        MAKTX             CHAR     40 MAKTX
         Material Description (Short Text)
        ERSDA             DATS      8 ERSDA
         Created On
        ERNAM             CHAR     12 ERNAM
         Name of Person who Created the Object
        LAEDA             DATS      8 LAEDA
         Date of Last Change
        AENAM             CHAR     12 AENAM
         Name of Person Who Changed Object
        VPSTA             CHAR     15 VPSTA
         Maintenance status of complete material
        PSTAT             CHAR     15 PSTAT_D
         Maintenance status
        LVORM             CHAR      1 LVOMA
         Flag Material for Deletion at Client Level
        MTART             CHAR      4 MTART
         Material Type
        MBRSH             CHAR      1 MBRSH
         Industry sector
        MATKL             CHAR      9 MATKL
         Material Group
        BISMT             CHAR     18 BISMT
         Old material number
        MEINS             UNIT      3 MEINS
         Base Unit of Measure
        BSTME             UNIT      3 BSTME
         Purchase Order Unit of Measure
        ZEINR             CHAR     22 DZEINR
         Document number (without document management system)
        ZEIAR             CHAR      3 DZEIAR
         Document type (without Document Management system)
        ZEIVR             CHAR      2 DZEIVR
         Document version (without Document Management system)
        ZEIFO             CHAR      4 DZEIFO
         Page format of document (without Document Management system)
        AESZN             CHAR      6 AESZN
         Document change number (without document management system)
        ______________________________________________________________________
        SAP AG                         11.07.2014                            1






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________


        Component       K Type Length TypName
        Short Text
        ____________________________________________________________
        BLATT             CHAR      3 BLATT
         Page number of document (without Document Management system)
        BLANZ             NUMC      3 BLANZ
         Number of sheets (without Document Management system)
        FERTH             CHAR     18 FERTH
         Production/inspection memo
        FORMT             CHAR      4 FORMT
         Page Format of Production Memo
        GROES             CHAR     32 GROES
         Size/dimensions
        WRKST             CHAR     48 WRKST
         Basic Material
        NORMT             CHAR     18 NORMT
         Industry Standard Description (such as ANSI or ISO)
        LABOR             CHAR      3 LABOR
         Laboratory/design office
        EKWSL             CHAR      4 EKWSL
         Purchasing Value Key
        BRGEW             QUAN     13 BRGEW
         Gross Weight
        NTGEW             QUAN     13 NTGEW
         Net Weight
        GEWEI             UNIT      3 GEWEI
         Weight Unit
        VOLUM             QUAN     13 VOLUM
         Volume
        VOLEH             UNIT      3 VOLEH
         Volume unit
        BEHVO             CHAR      2 BEHVO
         Container requirements
        RAUBE             CHAR      2 RAUBE
         Storage conditions
        TEMPB             CHAR      2 TEMPB
         Temperature conditions indicator
        DISST             CHAR      3 DISST
         Low-Level Code
        TRAGR             CHAR      4 TRAGR
         Transportation Group
        STOFF             CHAR     18 STOFF
         Hazardous material number
        SPART             CHAR      2 SPART
         Division
        KUNNR             CHAR     10 WETTB
         Competitor
        EANNR             CHAR     13 EANNR
         European Article Number (EAN) - obsolete!!!!!
        WESCH             QUAN     13 WESCH
         Quantity: Number of GR/GI slips to be printed
        BWVOR             CHAR      1 BWVOR
         Procurement rule
        BWSCL             CHAR      1 BWSCL
         Source of Supply
        ______________________________________________________________________
        SAP AG                         11.07.2014                            2






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________


        Component       K Type Length TypName
        Short Text
        ____________________________________________________________
        SAISO             CHAR      4 SAISO
         Season Category
        ETIAR             CHAR      2 ETIAR
         Label type
        ETIFO             CHAR      2 ETIFO
         Label form
        ENTAR             CHAR      1 DUMMYENTAR
         Deactivated
        EAN11             CHAR     18 EAN11
         International Article Number (EAN/UPC)
        NUMTP             CHAR      2 NUMTP
         Category of International Article Number (EAN)
        LAENG             QUAN     13 LAENG
         Length
        BREIT             QUAN     13 BREIT
         Width
        HOEHE             QUAN     13 HOEHE
         Height
        MEABM             UNIT      3 MEABM
         Unit of Dimension for Length/Width/Height
        PRDHA             CHAR     18 PRODH_D
         Product hierarchy
        AEKLK             CHAR      1 CK_AEKLK
         Stock Transfer Net Change Costing
        CADKZ             CHAR      1 CADKZ
         CAD Indicator
        QMPUR             CHAR      1 QMPUR
         QM in Procurement is Active
        ERGEW             QUAN     13 ERGEW
         Allowed packaging weight
        ERGEI             UNIT      3 ERGEI
         Unit of weight (allowed packaging weight)
        ERVOL             QUAN     13 ERVOL
         Allowed packaging volume
        ERVOE             UNIT      3 ERVOE
         Volume unit (allowed packaging volume)
        GEWTO             DEC       3 GEWTO
         Excess Weight Tolerance for Handling unit
        VOLTO             DEC       3 VOLTO
         Excess Volume Tolerance of the Handling Unit
        VABME             CHAR      1 VABME
         Variable Purchase Order Unit Active
        KZREV             CHAR      1 KZREV
         Revision Level Has Been Assigned to the Material
        KZKFG             CHAR      1 KZKFG
         Configurable Material
        XCHPF             CHAR      1 XCHPF
         Batch management requirement indicator
        VHART             CHAR      4 VHIART
         Packaging Material Type
        FUELG             DEC       3 FUELG
         Maximum level (by volume)
        ______________________________________________________________________
        SAP AG                         11.07.2014                            3






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________


        Component       K Type Length TypName
        Short Text
        ____________________________________________________________
        STFAK             INT2      5 STFAK
         Stacking factor
        MAGRV             CHAR      4 MAGRV
         Material Group: Packaging Materials
        BEGRU             CHAR      4 BEGRU
         Authorization Group
        DATAB             DATS      8 DATAB
         Valid-From Date
        LIQDT             DATS      8 LIQDT
         Deletion date
        SAISJ             CHAR      4 SAISJ
         Season Year
        PLGTP             CHAR      2 PLGTP
         Price Band Category
        MLGUT             CHAR      1 W_MITLEERG
         Empties Bill of Material
        EXTWG             CHAR     18 EXTWG
         External Material Group
        SATNR             CHAR     18 SATNR
         Cross-Plant Configurable Material
        ATTYP             CHAR      2 ATTYP
         Material Category
        KZKUP             CHAR      1 KZKUPMAT
         Indicator: Material can be co-product
        KZNFM             CHAR      1 KZNFM
         Indicator: The material has a follow-up material
        PMATA             CHAR     18 PMATN
         Pricing Reference Material
        MSTAE             CHAR      2 MSTAE
         Cross-Plant Material Status
        MSTAV             CHAR      2 MSTAV
         Cross-distribution-chain material status
        MSTDE             DATS      8 MSTDE
         Date from which the cross-plant material status is valid
        MSTDV             DATS      8 MSTDV
         Date from which the X-distr.-chain material status is valid
        TAKLV             CHAR      1 TAKLV
         Tax classification of the material
        RBNRM             CHAR      9 RBNR
         Catalog Profile
        MHDRZ             DEC       4 MHDRZ
         Minimum Remaining Shelf Life
        MHDHB             DEC       4 MHDHB
         Total shelf life
        MHDLP             DEC       3 MHDLP
         Storage percentage
        INHME             UNIT      3 INHME
         Content unit
        INHAL             QUAN     13 INHAL
         Net contents
        VPREH             DEC       5 VPREH
         Comparison price unit
        ______________________________________________________________________
        SAP AG                         11.07.2014                            4






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________


        Component       K Type Length TypName
        Short Text
        ____________________________________________________________
        ETIAG             CHAR     18 ETIAG
         IS-R Labeling: material grouping (deactivated in 4.0)
        INHBR             QUAN     13 INHBR
         Gross contents
        CMETH             CHAR      1 OIB_CMETH
         Quantity Conversion Method
        CUOBF             NUMC     18 CUOBM
         Internal object number
        KZUMW             CHAR      1 KZUMW
         Environmentally Relevant
        KOSCH             CHAR     18 KOSCH
         Product allocation determination procedure
        SPROF             CHAR      1 SPROF
         Pricing profile for variants
        NRFHG             CHAR      1 NRFHG
         Material qualifies for discount in kind
        MFRPN             CHAR     40 MFRPN
         Manufacturer Part Number
        MFRNR             CHAR     10 MFRNR
         Number of a Manufacturer
        BMATN             CHAR     18 MPMAT
         Number of firm's own (internal) inventory-managed material
        MPROF             CHAR      4 MPROF
         Manufacturer Part Profile
        KZWSM             CHAR      1 KZWSO
         Units of measure usage
        SAITY             CHAR      2 SAITY
         Rollout in a Season
        PROFL             CHAR      3 ADGE_PROFL
         Dangerous Goods Indicator Profile
        IHIVI             CHAR      1 ADGE_IHIVI
         Indicator: Highly Viscous
        ILOOS             CHAR      1 ADGE_ILOOS
         Indicator: In Bulk/Liquid
        SERLV             CHAR      1 SERLV
         Level of Explicitness for Serial Number
        KZGVH             CHAR      1 KZGVH
         Packaging Material is Closed Packaging
        XGCHP             CHAR      1 XGCHP
         Indicator: Approved batch record required
        KZEFF             CHAR      1 CC_MTEFF
         Assign effectivity parameter values/ override change numbers
        COMPL             NUMC      2 CSCP_COMP_LVL
         Material completion level
        IPRKZ             CHAR      1 DATTP
         Period Indicator for Shelf Life Expiration Date
        RDMHD             CHAR      1 RDMHD
         Rounding rule for calculation of SLED
        PRZUS             CHAR      1 PRZUS
         Indicator: Product composition printed on packaging
        MTPOS_MARA        CHAR      4 MTPOS_MARA
         General item category group
        ______________________________________________________________________
        SAP AG                         11.07.2014                            5






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________


        Component       K Type Length TypName
        Short Text
        ____________________________________________________________
        BFLME             CHAR      1 BFLME
         Generic Material with Logistical Variants
        MATFI             CHAR      1 MATFI
         Material Is Locked
        CMREL             CHAR      1 DE_CM_RELEVANCE_FLAG
         Relevant for Configuration Management
        BBTYP             CHAR      1 BBTYP
         Assortment List Type
        SLED_BBD          CHAR      1 SLED_BBD
         Expiration Date
        GTIN_VARIANT      CHAR      2 GTIN_VARIANT
         Global Trade Item Number Variant
        GENNR             CHAR     18 WSTR_SATNR_PP
         Material Number of the Generic Material in Prepack Materials
        RMATP             CHAR     18 PL_RMATP
         Reference material for materials packed in same way
        GDS_RELEVANT      CHAR      1 GDS_RELEVANT
         Indicator: Global Data Synchronization-Relevant
        WEORA             CHAR      1 WEORA
         Acceptance At Origin
        HUTYP_DFLT        CHAR      4 CIFHUTYPDF
         Standard HU Type
        PILFERABLE        CHAR      1 CIFPILFRBL
         Pilferable
        WHSTC             CHAR      2 CIFWHSTC
         Warehouse Storage Condition
        WHMATGR           CHAR      4 CIFWHMATGR
         Warehouse Material Group
        HNDLCODE          CHAR      4 CIFHDLCODE
         Handling Indicator
        HAZMAT            CHAR      1 CIFHAZMAT
         Relevant for Hazardous Substances
        HUTYP             CHAR      4 CIFHUTYP
         Handling Unit Type
        TARE_VAR          CHAR      1 CIFTAREVAR
         Variable Tare Weight
        MAXC              DEC      15 CIFMAXC
         Maximum Allowed Capacity of Packaging Material
        MAXC_TOL          DEC       3 CIFMAXCTOL
         Overcapacity Tolerance of the Handling Unit
        MAXL              QUAN     15 CIFMAXL
         Maximum Packing Length of Packaging Material
        MAXB              QUAN     15 CIFMAXB
         Maximum Packing Width of Packaging Material
        MAXH              QUAN     15 CIFMAXH
         Maximum Packing Height of Packaging Material
        MAXDIM_UOM        UNIT      3 CIFMAXDUOM
         Unit of Measure for Maximum Packing Length/Width/Height
        HERKL             CHAR      3 HERKL
         Country of origin of the material
        MFRGR             CHAR      8 MFRGR
         Material freight group
        ______________________________________________________________________
        SAP AG                         11.07.2014                            6






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________


        Component       K Type Length TypName
        Short Text
        ____________________________________________________________
        QQTIME            QUAN      3 CIFQQTIME
         Quarantine Period
        QQTIMEUOM         UNIT      3 CIFQQTIMEUOM
         Time Unit for Quarantine Period
        QGRP              CHAR      4 CIFQGRP
         Quality Inspection Group
        SERIAL            CHAR      4 CIFSERIAL
         Serial Number Profile
        PS_SMARTFORM      CHAR     30 CIFPSSFNAME
         Form Name
        LOGUNIT           UNIT      3 CIFLOGUNIT
         EWM CW: Logistics Unit of Measure
        CWQREL            CHAR      1 CIFCWQREL
         EWM CW: Material Is a Catch Weight Material
        CWQPROC           CHAR      2 CIFCWQPROC
         EWM CW: Catch Weight Profile for Entering CW Quantity
        CWQTOLGR          CHAR      9 CIFCWQTOLGR
         EWM-CW: Catch Weight Tolerance Group for EWM
        ADPROF            CHAR      3 CIFADPROF
         Adjustment Profile
        IPMIPPRODUCT      CHAR     40 CRM_PRODUCT_ID_IP
         ID for an Intellectual Property (CRM Product)
        ALLOW_PMAT_IGNO   CHAR      1 WPM_ALLOW_PMAT_IGNO_MAT
         Variant Price Allowed (for Material Master)
        MEDIUM            CHAR      6 MEDIU
         Medium
        BEV1_LULEINH      NUMC      8 /BEV1/LULEINH
         Loading Units
        BEV1_LULDEGRP     CHAR      3 /BEV1/LULDEGRP
         Loading Unit Group: IS Beverage
        BEV1_NESTRUCCAT   CHAR      1 /BEV1/NESTRUC_CAT
         Structure Category for Material Relationship
        DSD_SL_TOLTYP     CHAR      4 /DSD/SL_TOLTYP_ID
         Tolerance Type ID
        DSD_SV_CNT_GRP    CHAR     10 /DSD/SV_COUNT_GROUP
         Counting Group
        VSO_R_TILT_IND    CHAR      1 /VSO/M_TILT_IND
         Material may be Tilted (Vehicle Space Optimization)
        VSO_R_STACK_IND   CHAR      1 /VSO/M_STACK_IND
         Stacking not Allowed (VSO)
        VSO_R_BOT_IND     CHAR      1 /VSO/M_BOTTOM_IND
         Bottom Layer (Vehicle Space Optimization)
        VSO_R_TOP_IND     CHAR      1 /VSO/M_TOP_IND
         Top Layer (VSO)
        VSO_R_STACK_NO    NUMC      3 /VSO/M_STACK_NO
         Stacking Factor (Vehicle Space Optimization)
        VSO_R_PAL_IND     CHAR      1 /VSO/M_PALLET_IND
         Load without Packaging Material (VSO)
        VSO_R_PAL_OVR_D   QUAN     13 /VSO/R_PAL_OVR_D
         Permissible Overhang (Depth) of Packaging Material (VSO)
        VSO_R_PAL_OVR_W   QUAN     13 /VSO/R_PAL_OVR_W
         Permissible Overhang (Width) of Shipping Material (VSO)
        ______________________________________________________________________
        SAP AG                         11.07.2014                            7






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________


        Component       K Type Length TypName
        Short Text
        ____________________________________________________________
        VSO_R_PAL_B_HT    QUAN     13 /VSO/R_PAL_BIN_HGT
         Maximum Stacking Height of the Packaging Material (VSO)
        VSO_R_PAL_MIN_H   QUAN     13 /VSO/R_PAL_MIN_HT
         Minimum Stacking Height of the Packaging Material (VSO)
        VSO_R_TOL_B_HT    QUAN     13 /VSO/R_TOL_BIN_HT
         Tolerance to Exceed the Max. Stacking Height (VSO)
        VSO_R_NO_P_GVH    NUMC      2 /VSO/M_ANZ_PER_GVH
         Number of Materials for each Closed PKM (VSO)
        VSO_R_QUAN_UNIT   UNIT      3 /VSO/R_QUAN_UNIT
         Unit of Measure Vehicle Space Optimization
        VSO_R_KZGVH_IND   CHAR      1 /VSO/M_KZGVH_IND
         Closed Packaging Material Required (VSO)
        PACKCODE          CHAR     10 CBUNE_PACODE
         Packaging Code
        DG_PACK_STATUS    CHAR     10 ADGE_DG_PACK_STATUS
         Dangerous Goods Packaging Status
        MCOND             CHAR      1 DFPS_MCOND
         Material Condition Management
        RETDELC           CHAR      1 DFPS_RETDELC
         Return Code
        LOGLEV_RETO       CHAR      1 DFPS_LOGLEV_RETO
         Return to Logistics Level
        ADSPC_SPC         NUMC      1 ADSPC_SPC
         Spare Part Class Code
        IMATN             CHAR     18 IMATN
         FFF class
        PICNUM            CHAR     18 PIC_PICNUM_SUS
         Supersession chain number
        BSTAT             CHAR      2 WRFBSTAT
         Creation Status - Seasonal Procurement
        COLOR_ATINN       NUMC     10 WRF_COLOR_ATINN
         Internal Charactieristic Number for Color Characteristics
        SIZE1_ATINN       NUMC     10 WRF_SIZE1_ATINN
         Internal Char. Number for Characteristics for Main Sizes
        SIZE2_ATINN       NUMC     10 WRF_SIZE2_ATINN
         Internal Char. Number for Characteristics for Second Sizes
        COLOR             CHAR     18 WRF_COLOR
         Characteristic Value for Colors of Variants
        SIZE1             CHAR     18 WRF_SIZE1
         Characteristic Value for Main Sizes of Variants
        SIZE2             CHAR     18 WRF_SIZE2
         Characteristic Value for Second Size for Variants
        FREE_CHAR         CHAR     18 WRF_FREE_CHAR
         Characteristic Value for Evaluation Purposes
        CARE_CODE         CHAR     16 WRF_CARE_CODE
         Care Codes (such as Washing Code, Ironing Code, etc.)
        BRAND_ID          CHAR      4 WRF_BRAND_ID
         Brand
        FIBER_CODE1       CHAR      3 WRF_FIBER_CODE_1
         Fiber Code for Textiles (Component 1)
        FIBER_PART1       NUMC      3 WRF_FIBER_PART_1
         Percentage Share of Fiber (Component 1)
        ______________________________________________________________________
        SAP AG                         11.07.2014                            8






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________


        Component       K Type Length TypName
        Short Text
        ____________________________________________________________
        FIBER_CODE2       CHAR      3 WRF_FIBER_CODE_2
         Fiber Code for Textiles (Component 2)
        FIBER_PART2       NUMC      3 WRF_FIBER_PART_2
         Percentage Share of Fiber (Component 2)
        FIBER_CODE3       CHAR      3 WRF_FIBER_CODE_3
         Fiber Code for Textiles (Component 3)
        FIBER_PART3       NUMC      3 WRF_FIBER_PART_3
         Percentage Share of Fiber (Component 3)
        FIBER_CODE4       CHAR      3 WRF_FIBER_CODE_4
         Fiber Code for Textiles (Component 4)
        FIBER_PART4       NUMC      3 WRF_FIBER_PART_4
         Percentage Share of Fiber (Component 4)
        FIBER_CODE5       CHAR      3 WRF_FIBER_CODE_5
         Fiber Code for Textiles (Component 5)
        FIBER_PART5       NUMC      3 WRF_FIBER_PART_5
         Percentage Share of Fiber (Component 5)
        FASHGRD           CHAR      4 FASHGRD
         Fashion Grade
        UTIME             TIMS      6 CDUZEIT
         Time changed
        CTIME             TIMS      6 CTME
         Time of creation
        LAST_MODIF_DATE   CHAR     24 MSSCONNDATE
         Character representation of datetime YYYY-MM-DD HH:MM:SS:SSS
        ____________________________________________________________
          Fields with reference fields:
            Field name      Reference field
            BRGEW           MARA-GEWEI
            NTGEW           MARA-GEWEI
            VOLUM           MARA-VOLEH
            WESCH           MARA-MEINS
            LAENG           MARA-MEABM
            BREIT           MARA-MEABM
            HOEHE           MARA-MEABM
            ERGEW           MARA-ERGEI
            ERVOL           MARA-ERVOE
            INHAL           EMARA-INHME
            INHBR           EMARA-INHME
            MAXL            EMARA-MAXDIM_UOM
            MAXB            EMARA-MAXDIM_UOM
            MAXH            EMARA-MAXDIM_UOM
            QQTIME          EMARA-QQTIMEUOM
            VSO_R_PAL_OVR_D MARA-MEABM
            VSO_R_PAL_OVR_W MARA-MEABM
            VSO_R_PAL_B_HT  MARA-MEABM
            VSO_R_PAL_MIN_H MARA-MEABM
            VSO_R_TOL_B_HT  MARA-MEABM





        ______________________________________________________________________
        SAP AG                         11.07.2014                            9






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          Fields with conversion routines:
            Field name      Conversion routine
            MATNR           MATN1
            MEINS           CUNIT
            BSTME           CUNIT
            GEWEI           CUNIT
            VOLEH           CUNIT
            STOFF           MATN3
            KUNNR           ALPHA
            EAN11           EAN11
            MEABM           CUNIT
            ERGEI           CUNIT
            ERVOE           CUNIT
            SAISJ           GJAHR
            SATNR           MATN1
            PMATA           MATN1
            INHME           CUNIT
            MFRNR           ALPHA
            BMATN           MATN1
            IPRKZ           PERKZ
            GENNR           MATN1
            RMATP           MATN1
            MAXDIM_UOM      CUNIT
            QQTIMEUOM       CUNIT
            LOGUNIT         CUNIT
            VSO_R_QUAN_UNIT CUNIT
            IMATN           MATN1
            PICNUM          ALPHA
            COLOR_ATINN     ATINN
            SIZE1_ATINN     ATINN
            SIZE2_ATINN     ATINN


        Input Checks (Foreign Keys, Fixed Values)

          MANDT is checked against check table T000
          Field assignment:
            T000 - MANDT = ZMULE_S_MARA - MANDT

          LVORM checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          MTART is checked against check table T134
          Field assignment:
            T134 - MANDT = ZMULE_S_MARA - MANDT
            T134 - MTART = ZMULE_S_MARA - MTART

          MBRSH is checked against check table T137
          Field assignment:
            T137 - MANDT = ZMULE_S_MARA - MANDT
            T137 - MBRSH = ZMULE_S_MARA - MBRSH

        ______________________________________________________________________
        SAP AG                         11.07.2014                           10






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          MATKL is checked against check table T023
          Field assignment:
            T023 - MANDT = ZMULE_S_MARA - MANDT
            T023 - MATKL = ZMULE_S_MARA - MATKL

          MEINS is checked against check table T006
          Field assignment:
            T006 - MANDT = ZMULE_S_MARA - MANDT
            T006 - MSEHI = ZMULE_S_MARA - MEINS

          BSTME is checked against check table T006
          Field assignment:
            T006 - MANDT = ZMULE_S_MARA - MANDT
            T006 - MSEHI = ZMULE_S_MARA - BSTME

          WRKST is checked against check table TWSPR
          Field assignment:
            TWSPR - MANDT = SYST - MANDT
            TWSPR - WRKST = ZMULE_S_MARA - WRKST

          LABOR is checked against check table T024L
          Field assignment:
            T024L - MANDT = ZMULE_S_MARA - MANDT
            T024L - LABOR = ZMULE_S_MARA - LABOR

          EKWSL is checked against check table T405
          Field assignment:
            T405 - MANDT = ZMULE_S_MARA - MANDT
            T405 - EKWSL = ZMULE_S_MARA - EKWSL

          GEWEI is checked against check table T006
          Field assignment:
            T006 - MANDT = ZMULE_S_MARA - MANDT
            T006 - MSEHI = ZMULE_S_MARA - GEWEI

          VOLEH is checked against check table T006
          Field assignment:
            T006 - MANDT = ZMULE_S_MARA - MANDT
            T006 - MSEHI = ZMULE_S_MARA - VOLEH

          BEHVO is checked against check table T144
          Field assignment:
            T144 - MANDT = ZMULE_S_MARA - MANDT
            T144 - BEHVO = ZMULE_S_MARA - BEHVO

          RAUBE is checked against check table T142
          Field assignment:
            T142 - MANDT = ZMULE_S_MARA - MANDT
            T142 - RAUBE = ZMULE_S_MARA - RAUBE





        ______________________________________________________________________
        SAP AG                         11.07.2014                           11






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          TEMPB is checked against check table T143
          Field assignment:
            T143 - MANDT = ZMULE_S_MARA - MANDT
            T143 - TEMPB = ZMULE_S_MARA - TEMPB

          TRAGR is checked against check table TTGR
          Field assignment:
            TTGR - MANDT = ZMULE_S_MARA - MANDT
            TTGR - TRAGR = ZMULE_S_MARA - TRAGR

          STOFF is checked against check table MGEF
          Field assignment:
            MGEF - MANDT = SY - MANDT
            MGEF - STOFF = ZMULE_S_MARA - STOFF
            MGEF - REGKZ = * (generic)

          SPART is checked against check table TSPA
          Field assignment:
            TSPA - MANDT = ZMULE_S_MARA - MANDT
            TSPA - SPART = ZMULE_S_MARA - SPART

          KUNNR is checked against check table V_KNA1WETT
          Field assignment:
            V_KNA1WETT - MANDT = ZMULE_S_MARA - MANDT
            V_KNA1WETT - KUNNR = ZMULE_S_MARA - KUNNR

          BWVOR is checked against check table T6WP1
          Field assignment:
            T6WP1 - MANDT = SYST - MANDT
            T6WP1 - BWVOR = ZMULE_S_MARA - BWVOR

          BWSCL is checked against check table TMBW1
          Field assignment:
            TMBW1 - MANDT = SY - MANDT
            TMBW1 - BWSCL = ZMULE_S_MARA - BWSCL

          SAISO is checked against check table T6WSP
          Field assignment:
            T6WSP - MANDT = ZMULE_S_MARA - MANDT
            T6WSP - SAISO = ZMULE_S_MARA - SAISO

          ETIAR is checked against check table T6WP3
          Field assignment:
            T6WP3 - MANDT = ZMULE_S_MARA - MANDT
            T6WP3 - ETIAR = ZMULE_S_MARA - ETIAR

          ETIFO is checked against check table T6WP4
          Field assignment:
            T6WP4 - MANDT = ZMULE_S_MARA - MANDT
            T6WP4 - ETIFO = ZMULE_S_MARA - ETIFO




        ______________________________________________________________________
        SAP AG                         11.07.2014                           12






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          NUMTP is checked against check table TNTP
          Field assignment:
            TNTP - MANDT = ZMULE_S_MARA - MANDT
            TNTP - NUMTP = ZMULE_S_MARA - NUMTP

          MEABM is checked against check table T006
          Field assignment:
            T006 - MANDT = ZMULE_S_MARA - MANDT
            T006 - MSEHI = ZMULE_S_MARA - MEABM

          PRDHA is checked against check table T179
          Field assignment:
            T179 - MANDT = ZMULE_S_MARA - MANDT
            T179 - PRODH = ZMULE_S_MARA - PRDHA

          AEKLK checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          CADKZ checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          QMPUR checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          ERGEI is checked against check table T006
          Field assignment:
            T006 - MANDT = ZMULE_S_MARA - MANDT
            T006 - MSEHI = ZMULE_S_MARA - ERGEI

          ERVOE is checked against check table T006
          Field assignment:
            T006 - MANDT = ZMULE_S_MARA - MANDT
            T006 - MSEHI = ZMULE_S_MARA - ERVOE

          VABME checked against fixed values from domain VABME
          Fixed values:
                    Not active
            1       Active
            2       Active with own price

          KZREV checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes




        ______________________________________________________________________
        SAP AG                         11.07.2014                           13






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          KZKFG checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          XCHPF checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          VHART is checked against check table TVTY
          Field assignment:
            TVTY - MANDT = SYST - MANDT
            TVTY - TRATY = ZMULE_S_MARA - VHART

          MAGRV is checked against check table TVEGR
          Field assignment:
            TVEGR - MANDT = SYST - MANDT
            TVEGR - MAGRV = ZMULE_S_MARA - MAGRV

          PLGTP is checked against check table TWPT
          Field assignment:
            TWPT - MANDT = SY - MANDT
            TWPT - PLGTP = ZMULE_S_MARA - PLGTP

          MLGUT checked against fixed values from domain FLAG
          Fixed values:
                    Flag is Not Set
            X       Flag set. Event has occurred.

          EXTWG is checked against check table TWEW
          Field assignment:
            TWEW - MANDT = ZMULE_S_MARA - MANDT
            TWEW - EXTWG = ZMULE_S_MARA - EXTWG

          SATNR is checked against check table MARA
          Field assignment:
            MARA - MANDT = SY - MANDT
            MARA - MATNR = ZMULE_S_MARA - SATNR

          ATTYP checked against fixed values from domain ATTYP
          Fixed values:
                    Single material (industry)
            00      Single material
            01      Generic material
            02      Variant
            10      Sales set
            11      Prepack
            12      Display
            20      Material group material
            21      Hierarchy material
            22      Group material
            30      Material group reference material

        ______________________________________________________________________
        SAP AG                         11.07.2014                           14






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          KZKUP checked against fixed values from domain FLAG
          Fixed values:
                    Flag is Not Set
            X       Flag set. Event has occurred.

          KZNFM checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          PMATA is checked against check table MARA
          Field assignment:
            MARA - MANDT = SY - MANDT
            MARA - MATNR = ZMULE_S_MARA - PMATA

          MSTAE is checked against check table T141
          Field assignment:
            T141 - MANDT = SY - MANDT
            T141 - MMSTA = ZMULE_S_MARA - MSTAE

          MSTAV is checked against check table TVMS
          Field assignment:
            TVMS - MANDT = SY - MANDT
            TVMS - VMSTA = ZMULE_S_MARA - MSTAV

          TAKLV is checked against check table TSKM
          Field assignment:
            TSKM - MANDT = SY - MANDT
            TSKM - TATYP = * (generic)
            TSKM - TAXKM = ZMULE_S_MARA - TAKLV

          RBNRM is checked against check table T352B
          Field assignment:
            T352B - MANDT = SY - MANDT
            T352B - RBNR = ZMULE_S_MARA - RBNRM

          INHME is checked against check table T006
          Field assignment:
            T006 - MANDT = SY - MANDT
            T006 - MSEHI = ZMULE_S_MARA - INHME

          ETIAG is checked against check table TWEA
          Field assignment:
            TWEA - MANDT = SY - MANDT
            TWEA - ARTGR = ZMULE_S_MARA - ETIAG

          CMETH checked against fixed values from domain OIB_CMETH
          Fixed values:
                    Standard Conversion
            1       Quantity Conversion (Oil, Natural Gas,...) with Conv. Group
            2       Std Conv. with Tax Group/Without UoM Group (only IS-OIL-TDP)



        ______________________________________________________________________
        SAP AG                         11.07.2014                           15






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          KZUMW checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          KOSCH is checked against check table T190S
          Field assignment:
            T190S - MANDT = SYST - MANDT
            T190S - KOSCH = ZMULE_S_MARA - KOSCH

          SPROF checked against fixed values from domain SPROF
          Fixed values:
                    Variants priceable diff.; do not propose GMaterial as ref.
            1       Variants priceable differently; propose GMaterial as ref.
            2       All variants have the sales price of the generic material

          NRFHG checked against fixed values from domain NRFHG
          Fixed values:
                    Not eligible for discount in kind
            1       Eligible for discount in kind for purchasing and sales
            2       Eligible for discount in kind only for purchasing
            3       Eligible for discount in kind only for sales

          MFRNR is checked against check table LFA1
          Field assignment:
            LFA1 - MANDT = SYST - MANDT
            LFA1 - LIFNR = ZMULE_S_MARA - MFRNR

          BMATN is checked against check table MARA
          Field assignment:
            MARA - MANDT = SYST - MANDT
            MARA - MATNR = ZMULE_S_MARA - BMATN

          MPROF is checked against check table TMPPF
          Field assignment:
            TMPPF - MANDT = SYST - MANDT
            TMPPF - MPROF = ZMULE_S_MARA - MPROF

          KZWSM checked against fixed values from domain KZWSO
          Fixed values:
                    Alternative unit of measure
            A       Proportion unit
            B       Product unit

          SAITY is checked against check table T6WSA
          Field assignment:
            T6WSA - MANDT = SYST - MANDT
            T6WSA - SAITY = ZMULE_S_MARA - SAITY

          PROFL is checked against check table TDG41
          Field assignment:
            TDG41 - MANDT = SYST - MANDT
            TDG41 - PROFL = ZMULE_S_MARA - PROFL

        ______________________________________________________________________
        SAP AG                         11.07.2014                           16






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          IHIVI checked against fixed values from domain X
          Fixed values:
                    No
            X       Yes

          ILOOS checked against fixed values from domain X
          Fixed values:
                    No
            X       Yes

          SERLV checked against fixed values from domain SERLV
          Fixed values:
                    Serialization within the stock material number
            1       Keep equipment number and serial number synchronous

          KZGVH checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          XGCHP checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          KZEFF checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          COMPL is checked against check table TCSCP_COMP_LVL
          Field assignment:
            TCSCP_COMP_LVL - MANDT = ZMULE_S_MARA - MANDT
            TCSCP_COMP_LVL - COMP_LEVEL = ZMULE_S_MARA - COMPL

          IPRKZ checked against fixed values from domain DATTP
          Fixed values:
                    Day
            1       Week
            2       Month
            3       Year

          RDMHD checked against fixed values from domain RDMHD
          Fixed values:
                    No rounding off
            +       End of chosen period (week, month or year)
            -       Start of chosen period (week, month or year)
            F       Start of the following period (week, month, year)

          PRZUS checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

        ______________________________________________________________________
        SAP AG                         11.07.2014                           17






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          MTPOS_MARA is checked against check table TPTM
          Field assignment:
            TPTM - MANDT = SYST - MANDT
            TPTM - MTPOS = ZMULE_S_MARA - MTPOS_MARA

          BFLME checked against fixed values from domain BFLME
          Fixed values:
                    Material is not a logistical variant
            1       Generic material with logistical variants
            2       Sales variant
            3       Procurement variant

          MATFI checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          CMREL checked against fixed values from domain DO_CM_RELEVANCE_FLAG
          Fixed values:
                    Not relevant for Configuration Management
            1       Relevant for Configuration Management

          SLED_BBD checked against fixed values from domain SLED_BBD
          Fixed values:
            B       Expiration Date
            E       Shelf Life Expiration Date

          GENNR is checked against check table MARA
          Field assignment:
            MARA - MANDT = SYST - MANDT
            MARA - MATNR = ZMULE_S_MARA - GENNR

          RMATP is checked against check table MARA
          Field assignment:
            MARA - MANDT = SYST - MANDT
            MARA - MATNR = ZMULE_S_MARA - RMATP

          GDS_RELEVANT checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          WEORA checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          HUTYP_DFLT is checked against check table THUTYP
          Field assignment:
            THUTYP - MANDT = SYST - MANDT
            THUTYP - HUTYP = ZMULE_S_MARA - HUTYP_DFLT



        ______________________________________________________________________
        SAP AG                         11.07.2014                           18






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          PILFERABLE checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          WHSTC is checked against check table TWHSTC
          Field assignment:
            TWHSTC - MANDT = SYST - MANDT
            TWHSTC - WHSTC = ZMULE_S_MARA - WHSTC

          WHMATGR is checked against check table TWHMATGR
          Field assignment:
            TWHMATGR - MANDT = SYST - MANDT
            TWHMATGR - WHMATGR = ZMULE_S_MARA - WHMATGR

          HNDLCODE is checked against check table THNDLCD
          Field assignment:
            THNDLCD - MANDT = SYST - MANDT
            THNDLCD - HNDLCODE = ZMULE_S_MARA - HNDLCODE

          HAZMAT checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          HUTYP is checked against check table THUTYP
          Field assignment:
            THUTYP - MANDT = SYST - MANDT
            THUTYP - HUTYP = ZMULE_S_MARA - HUTYP

          TARE_VAR checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          MAXDIM_UOM is checked against check table T006
          Field assignment:
            T006 - MANDT = SYST - MANDT
            T006 - MSEHI = ZMULE_S_MARA - MAXDIM_UOM

          HERKL is checked against check table T005
          Field assignment:
            T005 - MANDT = SYST - MANDT
            T005 - LAND1 = ZMULE_S_MARA - HERKL

          MFRGR is checked against check table TMFG
          Field assignment:
            TMFG - MANDT = SYST - MANDT
            TMFG - MFRGR = ZMULE_S_MARA - MFRGR





        ______________________________________________________________________
        SAP AG                         11.07.2014                           19






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          QQTIMEUOM is checked against check table T006
          Field assignment:
            T006 - MANDT = SYST - MANDT
            T006 - MSEHI = ZMULE_S_MARA - QQTIMEUOM

          QGRP is checked against check table TQGRP
          Field assignment:
            TQGRP - MANDT = SYST - MANDT
            TQGRP - QGRP = ZMULE_S_MARA - QGRP

          SERIAL is checked against check table TSERIAL
          Field assignment:
            TSERIAL - MANDT = SYST - MANDT
            TSERIAL - SERIAL = ZMULE_S_MARA - SERIAL

          PS_SMARTFORM is checked against check table STXFADM
          Field assignment:
            STXFADM - FORMNAME = ZMULE_S_MARA - PS_SMARTFORM

          LOGUNIT is checked against check table MARM
          Field assignment:
            MARM - MANDT = SYST - MANDT
            MARM - MATNR = ZMULE_S_MARA - MATNR
            MARM - MEINH = ZMULE_S_MARA - LOGUNIT

          CWQREL checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          CWQPROC is checked against check table TCWQPROC
          Field assignment:
            TCWQPROC - MANDT = SYST - MANDT
            TCWQPROC - CWQPROC = ZMULE_S_MARA - CWQPROC

          CWQTOLGR is checked against check table TCWQTOLGR
          Field assignment:
            TCWQTOLGR - MANDT = SYST - MANDT
            TCWQTOLGR - CWQTOLGR = ZMULE_S_MARA - CWQTOLGR

          ADPROF is checked against check table TAPROF
          Field assignment:
            TAPROF - MANDT = SYST - MANDT
            TAPROF - ADPROF = ZMULE_S_MARA - ADPROF

          ALLOW_PMAT_IGNO checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes





        ______________________________________________________________________
        SAP AG                         11.07.2014                           20






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          MEDIUM is checked against check table T372M
          Field assignment:
            T372M - MANDT = SYST - MANDT
            T372M - MEDIU = ZMULE_S_MARA - MEDIUM

          BEV1_NESTRUCCAT checked against fixed values from domain /BEV1/NESTRUC_CAT
          Fixed values:
                    No structure
            F       Full Product
            S       Structured Empties

          VSO_R_TILT_IND checked against fixed values from domain /VSO/M_XFIELD
          Fixed values:
                    No
            X       Yes

          VSO_R_STACK_IND checked against fixed values from domain /VSO/M_XFIELD
          Fixed values:
                    No
            X       Yes

          VSO_R_BOT_IND checked against fixed values from domain /VSO/M_XFIELD
          Fixed values:
                    No
            X       Yes

          VSO_R_TOP_IND checked against fixed values from domain /VSO/M_XFIELD
          Fixed values:
                    No
            X       Yes

          VSO_R_PAL_IND checked against fixed values from domain /VSO/M_XFIELD
          Fixed values:
                    No
            X       Yes

          VSO_R_NO_P_GVH checked against fixed values from domain /VSO/M_ANZ_PER_GVH
          Fixed values:
            00
            04
            08
            16

          VSO_R_KZGVH_IND checked against fixed values from domain /VSO/M_XFIELD
          Fixed values:
                    No
            X       Yes

          PACKCODE is checked against check table CCUNC121
          Field assignment:
            CCUNC121 - MANDT = SYST - MANDT
            CCUNC121 - LWDG = ' ' (constant)
            CCUNC121 - PACKCODE = ZMULE_S_MARA - PACKCODE

        ______________________________________________________________________
        SAP AG                         11.07.2014                           21






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          DG_PACK_STATUS is checked against check table TDG101
          Field assignment:
            TDG101 - MANDT = SYST - MANDT
            TDG101 - DG_PACK_STATUS = ZMULE_S_MARA - DG_PACK_STATUS

          MCOND checked against fixed values from domain DFPS_MCOND
          Fixed values:
                    No Condition Management
            1       Condition Management Only
            2       Condition Management with Batch Number

          ADSPC_SPC checked against fixed values from domain ADSPC_SPC
          Fixed values:
            0       Reference item
            1       Expendable spare
            2       Repairable spare, having a supporting CMM
            6       Repairable spare, not having a supporting CMM

          BSTAT is checked against check table WRFMATBSTAT
          Field assignment:
            WRFMATBSTAT - MANDT = SYST - MANDT
            WRFMATBSTAT - BSTAT = ZMULE_S_MARA - BSTAT

          BRAND_ID is checked against check table WRF_BRANDS
          Field assignment:
            WRF_BRANDS - MANDT = SYST - MANDT
            WRF_BRANDS - BRAND_ID = ZMULE_S_MARA - BRAND_ID

          FIBER_CODE1 is checked against check table WRF_FIBER_CODES
          Field assignment:
            WRF_FIBER_CODES - MANDT = SYST - MANDT
            WRF_FIBER_CODES - FIBER_CODE = ZMULE_S_MARA - FIBER_CODE1

          FIBER_CODE2 is checked against check table WRF_FIBER_CODES
          Field assignment:
            WRF_FIBER_CODES - MANDT = SYST - MANDT
            WRF_FIBER_CODES - FIBER_CODE = ZMULE_S_MARA - FIBER_CODE2

          FIBER_CODE3 is checked against check table WRF_FIBER_CODES
          Field assignment:
            WRF_FIBER_CODES - MANDT = SYST - MANDT
            WRF_FIBER_CODES - FIBER_CODE = ZMULE_S_MARA - FIBER_CODE3

          FIBER_CODE4 is checked against check table WRF_FIBER_CODES
          Field assignment:
            WRF_FIBER_CODES - MANDT = SYST - MANDT
            WRF_FIBER_CODES - FIBER_CODE = ZMULE_S_MARA - FIBER_CODE4

          FIBER_CODE5 is checked against check table WRF_FIBER_CODES
          Field assignment:
            WRF_FIBER_CODES - MANDT = SYST - MANDT
            WRF_FIBER_CODES - FIBER_CODE = ZMULE_S_MARA - FIBER_CODE5


        ______________________________________________________________________
        SAP AG                         11.07.2014                           22






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~





        ABAP Dictionary                 Rel. 731                  ZMULE_S_MARA
        ______________________________________________________________________



          FASHGRD is checked against check table T6WFG
          Field assignment:
            T6WFG - MANDT = ZMULE_S_MARA - MANDT
            T6WFG - FASHGRD = ZMULE_S_MARA - FASHGRD


















































        ______________________________________________________________________
        SAP AG                         11.07.2014                           23






~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
