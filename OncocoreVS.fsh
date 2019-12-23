ValueSet:    GeneticTestVS
Title: "Genetic Test Value Set"
Description: "Value set containing codes representing genetic tests. Currently the best source of codes is the [Genetic Test Registry](http://www.ncbi.nlm.nih.gov/gtr). The user should be aware that the GTR cannot be a sole reliable source since the test data is voluntarily updated and there is no overarching data steward. This value set contains all codes from http://hl7.org/fhir/us/core/ValueSet/us-core-diagnosticreport-lab-codes (namely, the subset of LOINC codes with CLASSTYPE = 1), plus all codes in GTR.

Implementation note: Although only a subset of LOINC codes is formally part of this value set, the value set itself contains all codes in LOINC, because FHIR cannot create an implicitly-defined value set based on LOINC's CLASSTYPE property.

Conformance note: To be conformant to US Core, a LOINC code must be used, if available. Only if there is no suitable code in LOINC may other codes (such as those from GTR) be used."
* codes from system LNC // where CLASSTYPE = 1 (FHIR terminology server can't handle this yet)
* codes from system GTR

ValueSet:    ClinVarVS
Title: "ClinVar Value Set"
Description: "Value set of human genetic variants, drawn from [ClinVar](https://www.ncbi.nlm.nih.gov/clinvar/). The codes in this value set refer to the ClinVar Variation ID, or the identifier for the variant or set of variants that were interpreted. [Source: NCBI ClinVar Data Dictionary](https://www.ncbi.nlm.nih.gov/projects/clinvar/ClinVarDataDictionary.pdf)"
* codes from system CLINVAR

ValueSet:     CancerBodyLocationVS
Title: "Cancer Body Location Value Set"
Description:  "Codes describing the location(s) of primary or secondary cancer. The value set includes all codes from the SNOMED CT body structure hierarchy (codes descending from 123037004 'Body Structure'). The cancer body location may also be expressed using ICD-O-3 topography codes, however, those codes are not included here due to intellectual property restrictions. No other code systems are considered conformant."
* codes from system SCT where code is-a SCT#123037004  "Body Structure"

ValueSet:   HistologyMorphologyBehaviorVS
Title: "Histology Morphology Behavior Value Set"
Description: "Codes representing the structure, arrangement, and behavioral characteristics of malignant neoplasms, and cancer cells. Inclusion criteria: in situ neoplasms and malignant neoplasms. Exclusion criteria: benign neoplasms and neoplasms of unspecified behavior. Note: As the vocabulary binding is extensible within this IG, ICD-O-3 morphology codes (including behavior suffix) may also be used; they are not included in the value set for intellectual property reasons. For primary cancers, the ICD-O-3 behavior suffix should be /1, /2, or /3. For secondary cancers, the ICD-O-3 behavior suffix should be /6. Only SNOMED CT and ICD-O-3 are considered conformant to the specification. However, to be compliant with US Core Profiles, ICD-O-3 may only be used if there is no suitable code in SNOMED CT."
* codes from system SCT where code is-a SCT#367651003 "Malignant neoplasm of primary, secondary, or uncertain origin (morphologic abnormality)" 
* codes from system SCT where code is-a SCT#399919001 "Carcinoma in situ - category (morphologic abnormality)"
* codes from system SCT where 
    code is-a SCT#399983006 "In situ adenomatous neoplasm - category (morphologic abnormality)" and
    code is-not-a SCT#399983006 "Papillary neoplasm, pancreatobiliary-type, with high grade intraepithelial neoplasia (morphologic abnormality)" and
    code is-not-a SCT#128640002 "Glandular intraepithelial neoplasia, grade III (morphologic abnormality)" and
    code is-not-a SCT#450890000 "Glandular intraepithelial neoplasia, low grade (morphologic abnormality)" and
    code is-not-a SCT#703548001 "Endometrioid intraepithelial neoplasia (morphologic abnormality)"
* SCT#399878004 "Malignant neoplasm with pilar differentiation (morphologic abnormality)"

ValueSet:   CancerHistologicGradeVS
Title:  "Cancer Histologic Grade Value Set"
Description:  "The grade of the tumor. This is a subset of the LOINC answer list LL213-0, which represents allowable values for NAACCR data item #440. The original answer list is outdated, as it includes terms pointing to the lineage of hematopoietic/lymphoid neoplasms, which have been retired by NAACCR as of version 18 Data Standards and Data Dictionary."
* SCT#54102005  "G1 grade (finding)"
* SCT#1663004   "G2 grade (finding)"
* SCT#61026006  "G3 grade (finding)"
* SCT#258245003 "G4 grade (finding)"
* SCT#60815008  "Grade not determined (finding)" // synonyms include not applicable, not stated
//SCT#12619005  "GX grade (finding)" // includes synonym "Grade cannot be assessed", this is the terminology used by AJCC

ValueSet: SurgicalMarginInvolvementVS
Title: "Surgical Margin Involvement Value Set"
Description:  "Indication of whether the tumor was involved at the edge of resection."
* SCT#55182004 "Surgical margin uninvolved by tumor (finding)"
* SCT#370109009 "Surgical margin involved by tumor (finding)"

ValueSet: CancerDiseaseStatusEvidenceTypeVS
Title: "Cancer Disease Status Evidence Type Value Set"
Description:  "The type of evidence backing up the clinical determination of cancer progression. The code 'SCT#252416005 Histopathology test (procedure)' is intended to be used when there is a biopsy that contributes evidence of the cancer disease status."
//SCT codes are children of SCT#386053000 "Evaluation procedure (procedure)"
* SCT#363679005 "Imaging (procedure)"
* SCT#252416005 "Histopathology test (procedure)"
* SCT#711015009 "Assessment of symptom control (procedure)"
* SCT#5880005   "Physical examination procedure (procedure)"
* SCT#250724005 "Tumor marker measurement (procedure)"
* SCT#386344002 "Laboratory data interpretation (procedure)"
//MTH#C0005516	"Biological markers"

ValueSet:   CancerStagingSystemVS 
Title: "Cancer Staging System Value Set"
Description:    "System used for staging. Because SNOMED CT does not currently have a code representing AJCC Version 8, specify the exact text 'AJCC Version 8' in the text sub-field of the code structure, and omit the code."
* SCT#444256004 "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
* SCT#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* SCT#258235000 "International Union Against Cancer (tumor staging)"

ValueSet: TNMStageGroupVS
Title: "TNM Stage Group Value Set"
Description: "This value set is intended to contain allowable values for Stage Group, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferrably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.

*AJCC terminology: examples of stage groups include 'Stage 0' and 'Stage IIA'. The full set of stage groups, as well rules on how to assign a stage group, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API.

* SNOMED CT has content representing stage group under the hierarchy of 261612004 'Stages', such as 258215001 'Stage 1' and 261614003 'Stage2A'. In addition, SNOMED CT may not have complete TNM staging terminology and may require supplementation with codes from another controlled vocabulary (e.g. NCI Thesaurus)."
* codes from system AJCC

ValueSet: TNMPrimaryTumorCategoryVS
Title: "TNM Primary Tumor Category Value Set"
Description: "This value set is intended to contain allowable values for the T category, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferrably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.

* AJCC terminology: examples of T categories include 'cTX', used when the tumor primary tumor cannot be evaluated, 'pT0', denoting there is no evidence of a primary tumor, and 'pTis', referencing carcinoma in situ (with some cancer-specific exceptions). Other T categories refer to increasing size of the primary tumor. Please note allowable T categories may vary between clinical and pathologic classifications. The full set of allowable clinical and pathologic T categories, along with its current descriptions, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API.

* SNOMED CT has content related to the T category under the hierarchy of 385356007 'Tumor stage finding', such as 23351008 'T1 category' and 261650005 'Tumor stage T1c'. If using SNOMED CT to store T category findings, the use of codes that do not contain descriptions of the categories, such as the examples provided, is encouraged, as stage finding codes in SNOMED CT may not be up-to-date with current AJCC guidance. Note that SNOMED CT codes do not always make a distinction between clinical and pathological classifications (e.g. cT1 and pT1 may be represented by the same SNOMED CT code 23351008 'T1 category'). In addition, SNOMED CT may not have complete TNM staging terminology and may require supplementation with codes from another controlled vocabulary (e.g. NCI Thesaurus)."
* codes from system AJCC

ValueSet: TNMRegionalNodesCategoryVS
Title: "TNM Regional Nodes Category Value Set"
Description: "This value set is intended to contain allowable values for the N category, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferrably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.

* AJCC terminology: examples of N categories include 'cN0', indicating no evidence of lymph node involvement, and 'pN1', indicating regional lymph node involvement to a small extent, with specific thresholds for the lymph node groups and number of lymph nodes involved. Other N categories refer to increasing lymph node involvement. Please note allowable N categories may vary between clinical and pathologic classifications. The full set of allowable clinical and pathologic N categories, along with its current descriptions, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API.

* SNOMED CT has content related to the N category under the hierarchy of 385382003 'Node category finding', such as 5856006 'N3 category' and 277672002 'Node stage N1a'. If using SNOMED CT to store N category findings, the use of codes that do not contain descriptions of the categories, such as the examples provided, is encouraged, as stage finding codes in SNOMED CT may not be up-to-date with current AJCC guidance. Note that SNOMED CT codes do not always make a distinction between clinical and pathological classifications (e.g. 'cN1' and 'pN1' may be represented by the same SNOMED CT code 53623008 'N1 category'). In addition, SNOMED CT may not have complete TNM staging terminology and may require supplementation with codes from another controlled vocabulary (e.g. NCI Thesaurus)."
* codes from system AJCC

ValueSet: TNMDistantMetastasesCategoryVS
Title: "TNM Distant Metastases Category Value Set"
Description: "This value set is intended to contain allowable values for the M category, according to TNM staging rules. SNOMED CT codes or AJCC codes (preferrably, version 8 for current cancers) are allowed, but are not listed here due to AJCC intellectual property restrictions.

* AJCC terminology: examples of M categories include 'cM0', denoting there is no evidence of distant metastases, and 'pM1', an indication that the cancer has metasticized. The full set of allowable clinical and pathologic M categories, along with its current descriptions, can be accessed through the AJCC Staging Manual and any applicable updates and corrections, as well as the AJCC API.

* SNOMED CT: The SNOMED CT US Edition has content related to the M category under the hierarchy of 385380006 'Metastasis category finding', such as 30893008 'M0 category' and 443841006 'pM1a category'. If using SNOMED CT to store M category findings, the use of codes that do not contain descriptions of the categories, such as the examples provided, is encouraged, as stage finding codes in SNOMED CT may not be up-to-date with current AJCC guidance. Note that SNOMED CT codes do not always make a distinction between clinical and pathological classifications (e.g. 'cM0' and 'pM0' may be represented by the same SNOMED CT code 30893008 'M0 category'). In addition, SNOMED CT may not have complete TNM staging terminology and may require supplementation with codes from another controlled vocabulary (e.g. NCI Thesaurus)."
* codes from system AJCC


ValueSet: CancerRelatedSurgicalProcedureVS
Title: "Cancer Related Surgical Procedure Value Set"
Description: "Includes selected SNOMED CT codes that may be used in the treatment of cancer tumors. Codes from ICD-10-PCS and CPT are acceptable. CPT codes are not listed here due to intellectual property restrictions. ICD-10-PCS codes are not listed because of a limitation in the FHIR Implementation Guide publisher. For CPT and ICD-10-PCS, only codes representing surgical procedures should be used. 

Conformance note: If an ICD-10-PCS code is used, and a semantically equivalent SNOMED CT code is available, the resulting FHIR Procedure instance will not be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html)."
* SCT#174337000    "Destruction of lesion"
* SCT#49264007    "Excision of lesion"
* SCT#119894003    "Anus excision"
* SCT#24265000    "Operation on anus [NOS]"
* SCT#48185007    "Destruction of lesion"
* SCT#108034003    "Excision of lesion"
* SCT#112902005    "Partial cystectomy"
* SCT#63016009    "Total Cystectomy"
* SCT#64063003    "Radical Cystectomy"
* SCT#287716007    "Urinary bladder reconstruction"
* SCT#52224004    "Pelvic exenteration"
* SCT#149649000    "Cystectomy dome of bladder"
* SCT#14861000    "Operation on bladder [NOS]"
* SCT#18734000    "Destruction of lesion"
* SCT#68471001    "Excision of lesion"
* SCT#112705001    "Amputation"
* SCT#57168000    "Operation on bone [NOS]"
* SCT#68829005    "Destruction of lesion"
* SCT#64368001    "Partial mastectomy"
* SCT#70183006    "Subcutaneous mastectomy"
* SCT#172043006    "Total mastectomy"
* SCT#406505007    "Modified radical mastectomy"
* SCT#384723003    "Radical mastectomy"
* SCT#359740003    "Extended radical mastectomy"
* SCT#69031006    "Mastectomy"
* SCT#392090004    "Operation on breast [NOS]"
* SCT#31197001    "Destruction of lesion"
* SCT#36384005    "Excision of lesion"
* SCT#116140006    "Total hysterctomy"
* SCT#236886002    "Hysterectomy"
* SCT#116142003    "Radical hysterectomy"
* SCT#406044008    "Pelvic exentration "
* SCT#112916000    "Operation on cervix [NOS]"
* SCT#176871003    "Destruction of lesion"
* SCT#236884004    "Excision of lesion"
* SCT#387643005    "Partial hysterectomy"
* SCT#116140006    "Total hysterctomy"
* SCT#116142003    "Radical hysterectomy"
* SCT#236886002    "Hysterectomy"
* SCT#406044008    "Pelvic exentration "
* SCT#79876008    "Operation on uterus  [NOS]"
* SCT#18243008    "Destruction of lesion"
* SCT#386553005    "Excision of lesion"
* SCT#3980006    "Partial esophagectomy"
* SCT#14072009    "Total esophagectomy"
* SCT#76443003    "Total esophagectomy with gastropharyngostomy"
* SCT#45900003    "Esophagectomy"
* SCT#48114000    "Operation on esophagus [NOS]"
* SCT#52785004    "Destruction of lesion"
* SCT#69762004    "Excision of lesion"
* SCT#81516001    "Partial nephrectomy"
* SCT#175905003    "Total nephrectomy"
* SCT#116033007    "Radical nephrectomy"
* SCT#175898006    "Kidney operation  [NOS]"
* SCT#78923006    "Destruction of lesion"
* SCT#88623004    "Excision of lesion"
* SCT#80513001    "Partial laryngectomy"
* SCT#66478002    "Total laryngectomy"
* SCT#60041003    "Laryngopharyngectomy"
* SCT#72791001    "Laryngectomy"
* SCT#387636004    "Operation on larynx [NOS]"
* SCT#5415002    "Destruction of lesion"
* SCT#174431000    "Wedge resecton of liver"
* SCT#85946004    "Lobectomy of liver"
* SCT#15257006    "Lobectomy w/ partial excision of adjacent lobes"
* SCT#107963000    "Hepatectomy"
* SCT#13580001000004101   "Excision of tumor of liver"
* SCT#27280000    "Liver transplant w/recipient hepatectomy"
* SCT#4974007    "Operation on liver [NOS]"
* SCT#450608000    "Destruction of lesion"
* SCT#119746007    "Excision of lesion"
* SCT#173170008    "Bilobectomy of lung"
* SCT#359623004    "Total lobectomy of lung"
* SCT#49795001    "Total pneumonectomy"
* SCT#91596000    "Complete excision of lung with mediastinal dissection"
* SCT#119746007    "Operation on lung [NOS]"
* SCT#230859007    "Destruction of lesion"
* SCT#230810008    "Excision of lesion"
* SCT#446103006    "Partial excision of lesion of brain "
* SCT#17537007    "Resection of spinal cord"
* SCT#447115003    "Total excision of lesion of brain"
* SCT#67402009    "Partial lobectomy"
* SCT#171443003    "Total lobectomy"
* SCT#70586009    "Operation on brain [NOS]"
* SCT#177018009    "Destruction of lesion"
* SCT#35887003    "Excision of lesion"
* SCT#116028008    "Salpingo-oophorectomy"
* SCT#29827000    "Bilateral salpingectomy w/oophorectomy"
* SCT#78698008    "Unilateral salpingo-oophorectomy"
* SCT#446526009    "Debulking of neoplasm of ovary"
* SCT#55853002    "Pelvic exenteraion, female"
* SCT#64887002    "Operation on ovary [NOS]"
* SCT#414158004    "Destruction of lesion"
* SCT#287847009    "Partial pancreatectomy"
* SCT#69036001    "Total pancreaticoduodenectomy"
* SCT#9524002    "Total pancreatectomy"
* SCT#265459006    "Total pancreaticodudoenectomy with distal gastrectomy"
* SCT#33149006    "Pancreatectomy"
* SCT#29630005    "Operation on pancreas [NOS]"
* SCT#10522005    "Destruction of lesion"
* SCT#37804007    "Excision of lesion"
* SCT#81870009    "Parotidectomy"
* SCT#11150009    "Partial parotidectomy"
* SCT#13358001    "Total parotidectomy"
* SCT#173486005    "Radical parotidectomy"
* SCT#58456002    "Operation on parotid gland [NOS]"
* SCT#107923001    "Destruction of lesion"
* SCT#3786007    "Excision of lesion"
* SCT#51265002    "Pharyngectomy"
* SCT#232546000    "Total pharyngolaryngectomy w/ laryngectomy"
* SCT#303621003    "Total pharyngectomy"
* SCT#23136006    "Operation on pharynx [NOS]"
* SCT#450514003    "Destruction of lesion"
* SCT#90199006    "Transurethral prostactomy"
* SCT#30426000    "Subtotal prostactomy"
* SCT#26294005    "Radical prostatectomy "
* SCT#65111004    "Pelvic exenteration"
* SCT#90470006    "Prostactomy"
* SCT#741007    "Operation on prostate [NOS]"
* SCT#177975003    "Destruction of lesion"
* SCT#87279008    "Excision of lesion"
* SCT#43075005    "Segmental colectomy"
* SCT#307656000    "Subtotal colectomy with ileosigmoid anastomosis"
* SCT#26390003    "Total  colectomy"
* SCT#174059005    "Proctocolectomy"
* SCT#82874003    "Operation on colon [NOS]"
* SCT#52838002    "Destruction of lesion"
* SCT#79764004    "Excision of lesion"
* SCT#82035006    "Resection of polyp"
* SCT#116237003    "Excision of lesion of rectum "
* SCT#307009004    "Wedge resection"
* SCT#86789002    "Abdominoperineal pull through"
* SCT#235364003    "Total Proctectomy"
* SCT#26390003    "Total  colectomy"
* SCT#174059005    "Proctocolectomy"
* SCT#118841000    "Operation on rectosigmoid [NOS]"
* SCT#52838002    "Destruction of lesion"
* SCT#79764004    "Excision of lesion"
* SCT#82035006    "Resection of polyp"
* SCT#116237003    "Excision of lesion of rectum "
* SCT#307009004    "Wedge resection"
* SCT#86789002    "Abdominoperineal pull through"
* SCT#235364003    "Total Proctectomy"
* SCT#174059005    "Proctocolectomy"
* SCT#74971002    "Operation on rectum [NOS]"
* SCT#87031008    "Destruction of lesion"
* SCT#67373001    "Excision of lesion"
* SCT#35646002    "Excision of lesion of skin"
* SCT#177302005    "Wide excision of skin lesion"
* SCT#81723002    "Amputaion"
* SCT#392011001    "Operation on skin [NOS]"
* SCT#31468007    "Destruction of lesion"
* SCT#67097003    "Partial splenectomy"
* SCT#174776001    "Total splenectomy"
* SCT#234319005    "Splenectomy"
* SCT#59300005    "Operation on spleen [NOS]"
* SCT#45189000    "Destruction of lesion"
* SCT#32327002    "Excision of lesion"
* SCT#49209004    "Subtotal gastrectomy"
* SCT#26452005    "Total gastrectomy"
* SCT#24431004    "Esophagoduodenostomy w/complete gastrectomy"
* SCT#287816003    "Radical gastrectomy"
* SCT#438338008    "Total gastrecomy w/extended lymphadencectomy "
* SCT#53442002    "Gastrectomy"
* SCT#16453004    "Operation on stomach [NOS]"
* SCT#12807004    "Destruction of lesion"
* SCT#176430002    "Excision of lesion"
* SCT#120001005    "Testis excision"
* SCT#396692006    "Radical Orchiectomy "
* SCT#236334001    "Total Orchiectomy"
* SCT#71657006    "Operation on testis [NOS]"
* SCT#20470003    "Destruction of lesion"
* SCT#171988007    "Excision of lesion"
* SCT#13619001    "Thyroidectomy"
* SCT#24443003    "Total thyroidectomy"
* SCT#30956003    "Subtotal thyroidectomy"
* SCT#15463004    "Operation on thyroid gland [NOS]"
