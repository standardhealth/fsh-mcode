Profile: CancerStageParent
Id: CancerStageParent
Parent: Observation
Title: "Cancer Stage Parent"
Description:  "Abstract parent class for members of cancer staging panels. Cancer panel members must include a timing element and staging system, and focus on a cancer disorder. Specific realizations will have value sets specific to certain staging systems."
* status, code, subject, effective[x], valueCodeableConcept, method MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* component 0..0
* partOf only Reference(Procedure)
* basedOn only Reference(ServiceRequest)
* focus only Reference(PrimaryCancerCondition)
* subject only Reference(CancerPatient)
* method from CancerStagingSystemVS (extensible)
* performer only Reference(Practitioner)

Profile: TNMClinicalStageGroup
Id: TNMClinicalStageGroup
Parent: CancerStageParent
Title: "TNM Clinical Stage Group"
Description: "The extent of the cancer in the body, according to the TNM classification system, based on information obtained prior to neoadjuvant treatment and surgery, e.g. based on evidence such as physical examination, imaging, and/or biopsy."
* code = LNC#21908-9 "Stage group.clinical Cancer"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.ordered = false
* extension ^slicing.rules = #open
*hasMember contains 
    TNMClinicalPrimaryTumorCategory 0..1 and
    TNMClinicalRegionalNodesCategory 0..1 and
    TNMClinicalDistantMetastasesCategory 0..1
* valueCodeableConcept from TNMStageGroupVS

Profile: TNMPathologicalStageGroup
Id: TNMPathologicalStageGroup
Parent: CancerStageParent
Title: "TNM Pathological Stage Group"
Description: "The extent of the cancer in the body, according to the TNM classification system, based on information obtained prior to neoadjuvant treatment and surgery, e.g. based on evidence such as physical examination, imaging, and/or biopsy."
* code =  LNC#21902-2 "Stage group.pathology Cancer"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.ordered = false
* extension ^slicing.rules = #open
* hasMember contains 
    TNMPathologicalPrimaryTumorCategory 0..1 and
    TNMPathologicalRegionalNodesCategory 0..1 and
    TNMPathologicalDistantMetastasesCategory 0..1
* valueCodeableConcept from TNMStageGroupVS

Profile:  TNMClinicalPrimaryTumorCategory
Id: TNMClinicalPrimaryTumorCategory
Parent: CancerStageParent
Title: "TNM Clinical Primary Tumor Category"
Description: "Category of the primary tumor, based on its size and extent, assessed prior to surgery, based on evidence such as physical examination, imaging, and/or biopsy."
* code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* valueCodeableConcept from TNMPrimaryTumorCategoryVS (preferred)

Profile:  TNMClinicalRegionalNodesCategory
Id: TNMClinicalRegionalNodesCategory
Parent: CancerStageParent
Title: "TNM Clinical Regional Nodes Category"
Description: "Category of the presence or absence of metastases in regional lymph nodes, assessed using tests that are done before surgery (Definition adapted from: NCI Dictionary of Cancer Terms). These include physical exams, imaging tests, laboratory tests (such as blood tests), and biopsies."
* code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* valueCodeableConcept from TNMRegionalNodesCategoryVS (preferred)

Profile:  TNMClinicalDistantMetastasesCategory
Id: TNMClinicalDistantMetastasesCategory
Parent: CancerStageParent
Title: "TNM Clinical Regional Nodes Category"
Description: "Category describing the presence or absence of metastases in remote anatomical locations, assessed through pathologic analysis of a specimen."
* code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* valueCodeableConcept from TNMDistantMetastasesCategoryVS (preferred)

Profile:  TNMPathologicalPrimaryTumorCategory
Id: TNMPathologicalPrimaryTumorCategory
Parent: CancerStageParent
Title: "TNM Pathological Primary Tumor Category"
Description: "Category of the primary tumor, based on its size and extent, assessed prior to surgery, based on evidence such as physical examination, imaging, and/or biopsy."
* code = LNC#21899-0 "Primary tumor.pathology Cancer"
* valueCodeableConcept from TNMPrimaryTumorCategoryVS (preferred)

Profile:  TNMPathologicalRegionalNodesCategory
Id: TNMPathologicalRegionalNodesCategory
Parent: CancerStageParent
Title: "TNM Pathological Regional Nodes Category"
Description: "Category of the presence or absence of metastases in regional lymph nodes, assessed using tests that are done before surgery (Definition adapted from: NCI Dictionary of Cancer Terms). These include physical exams, imaging tests, laboratory tests (such as blood tests), and biopsies."
* code = LNC#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* valueCodeableConcept from TNMRegionalNodesCategoryVS (preferred)

Profile:  TNMPathologicalDistantMetastasesCategory
Id: TNMPathologicalDistantMetastasesCategory
Parent: CancerStageParent
Title: "TNM Pathological Regional Nodes Category"
Description: "Category describing the presence or absence of metastases in remote anatomical locations, assessed through pathologic analysis of a specimen."
* code = LNC#21901-4 "Distant metastases.pathology [Class] Cancer"
* valueCodeableConcept from TNMDistantMetastasesCategoryVS (preferred)