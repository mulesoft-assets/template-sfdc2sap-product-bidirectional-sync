



        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________




        ZMMST_ENH_MARA
          Short description:Enhanced structure for material data
          Structure
          Active version


        Administration
          Development class:ZMM_DB
          Last changed by:MISNARDI
          Date of last change:11.03.2016


        Field Structure
          Number of fields: 215
          Total of field lengths: 1528

        Component       K Type Length TypName
        Short Text____________________________________________________________
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

        ______________________________________________________________________
        SAP AG                         14.03.2016                             1




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________




        Component       K Type Length TypName
        Short Text____________________________________________________________
        ZEIVR             CHAR      2 DZEIVR
         Document version (without Document Management system)
        ZEIFO             CHAR      4 DZEIFO
         Page format of document (without Document Management system)
        AESZN             CHAR      6 AESZN
         Document change number (without document management system)
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

        ______________________________________________________________________
        SAP AG                         14.03.2016                             2




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________




        Component       K Type Length TypName
        Short Text____________________________________________________________
        WESCH             QUAN     13 WESCH
         Quantity: Number of GR/GI slips to be printed
        BWVOR             CHAR      1 BWVOR
         Procurement rule
        BWSCL             CHAR      1 BWSCL
         Source of Supply
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

        ______________________________________________________________________
        SAP AG                         14.03.2016                             3




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________




        Component       K Type Length TypName
        Short Text____________________________________________________________
        XCHPF             CHAR      1 XCHPF
         Batch management requirement indicator
        VHART             CHAR      4 VHIART
         Packaging Material Type
        FUELG             DEC       3 FUELG
         Maximum level (by volume)
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

        ______________________________________________________________________
        SAP AG                         14.03.2016                             4




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________




        Component       K Type Length TypName
        Short Text____________________________________________________________
        INHME             UNIT      3 INHME
         Content unit
        INHAL             QUAN     13 INHAL
         Net contents
        VPREH             DEC       5 VPREH
         Comparison price unit
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

        ______________________________________________________________________
        SAP AG                         14.03.2016                             5




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________




        Component       K Type Length TypName
        Short Text____________________________________________________________
        RDMHD             CHAR      1 RDMHD
         Rounding rule for calculation of SLED
        PRZUS             CHAR      1 PRZUS
         Indicator: Product composition printed on packaging
        MTPOS_MARA        CHAR      4 MTPOS_MARA
         General item category group
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

        ______________________________________________________________________
        SAP AG                         14.03.2016                             6




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________




        Component       K Type Length TypName
        Short Text____________________________________________________________
        MAXDIM_UOM        UNIT      3 CIFMAXDUOM
         Unit of Measure for Maximum Packing Length/Width/Height
        HERKL             CHAR      3 HERKL
         Country of origin of the material
        MFRGR             CHAR      8 MFRGR
         Material freight group
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

        ______________________________________________________________________
        SAP AG                         14.03.2016                             7




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________




        Component       K Type Length TypName
        Short Text____________________________________________________________
        VSO_R_PAL_IND     CHAR      1 /VSO/M_PALLET_IND
         Load without Packaging Material (VSO)
        VSO_R_PAL_OVR_D   QUAN     13 /VSO/R_PAL_OVR_D
         Permissible Overhang (Depth) of Packaging Material (VSO)
        VSO_R_PAL_OVR_W   QUAN     13 /VSO/R_PAL_OVR_W
         Permissible Overhang (Width) of Shipping Material (VSO)
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

        ______________________________________________________________________
        SAP AG                         14.03.2016                             8




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________




        Component       K Type Length TypName
        Short Text____________________________________________________________
        BRAND_ID          CHAR      4 WRF_BRAND_ID
         Brand
        FIBER_CODE1       CHAR      3 WRF_FIBER_CODE_1
         Fiber Code for Textiles (Component 1)
        FIBER_PART1       NUMC      3 WRF_FIBER_PART_1
         Percentage Share of Fiber (Component 1)
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
         Character representation of datetime YYYY-MM-DD HH:MM:SS:SSS____________________________________________________________























        ______________________________________________________________________
        SAP AG                         14.03.2016                             9




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________





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
            INHAL           MARA-INHME
            INHBR           MARA-INHME
            MAXL            MARA-MAXDIM_UOM
            MAXB            MARA-MAXDIM_UOM
            MAXH            MARA-MAXDIM_UOM
            QQTIME          MARA-QQTIMEUOM
            VSO_R_PAL_OVR_D MARA-MEABM
            VSO_R_PAL_OVR_W MARA-MEABM
            VSO_R_PAL_B_HT  MARA-MEABM
            VSO_R_PAL_MIN_H MARA-MEABM
            VSO_R_TOL_B_HT  MARA-MEABM
































        ______________________________________________________________________
        SAP AG                         14.03.2016                            10




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________





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
            FIBER_CODE1     FIBER
            FIBER_CODE2     FIBER
            FIBER_CODE3     FIBER
            FIBER_CODE4     FIBER
            FIBER_CODE5     FIBER


        Input Checks (Foreign Keys, Fixed Values)

          LVORM checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          AEKLK checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes





        ______________________________________________________________________
        SAP AG                         14.03.2016                            11




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________





          CADKZ checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          QMPUR checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          VABME checked against fixed values from domain VABME
          Fixed values:
                    Not active
            1       Active
            2       Active with own price

          KZREV checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          KZKFG checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          XCHPF checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          MLGUT checked against fixed values from domain FLAG
          Fixed values:
                    Flag is Not Set
            X       Flag set. Event has occurred.

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
        SAP AG                         14.03.2016                            12




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________





          KZKUP checked against fixed values from domain FLAG
          Fixed values:
                    Flag is Not Set
            X       Flag set. Event has occurred.

          KZNFM checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          CMETH checked against fixed values from domain OIB_CMETH
          Fixed values:
                    Standard Conversion
            1       Quantity Conversion (Oil, Natural Gas,...) with Conv. Group
            2       Std Conv. with Tax Group/Without UoM Group (only IS-OIL-TDP)

          KZUMW checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

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

          KZWSM checked against fixed values from domain KZWSO
          Fixed values:
                    Alternative unit of measure
            A       Proportion unit
            B       Product unit

          IHIVI checked against fixed values from domain X
          Fixed values:
                    No
            X       Yes

          ILOOS checked against fixed values from domain X
          Fixed values:
                    No
            X       Yes





        ______________________________________________________________________
        SAP AG                         14.03.2016                            13




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________





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




        ______________________________________________________________________
        SAP AG                         14.03.2016                            14




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________





          CMREL checked against fixed values from domain DO_CM_RELEVANCE_FLAG
          Fixed values:
                    Not relevant for Configuration Management
            1       Relevant for Configuration Management

          SLED_BBD checked against fixed values from domain SLED_BBD
          Fixed values:
            B       Expiration Date
            E       Shelf Life Expiration Date

          GDS_RELEVANT checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          WEORA checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          PILFERABLE checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          HAZMAT checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          TARE_VAR checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          CWQREL checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          ALLOW_PMAT_IGNO checked against fixed values from domain XFELD
          Fixed values:
                    No
            X       Yes

          BEV1_NESTRUCCAT checked against fixed values from domain /BEV1/NESTRUC_CAT
          Fixed values:
                    No structure
            F       Full Product
            S       Structured Empties




        ______________________________________________________________________
        SAP AG                         14.03.2016                            15




        ABAP Dictionary                 Rel. 740                 ZMMST_ENH_MARA______________________________________________________________________





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





        ______________________________________________________________________
        SAP AG                         14.03.2016                            16
