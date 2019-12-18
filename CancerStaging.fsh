Profile: CancerStageGroup
Id: CancerStageGroup
Parent: Observation
Title: "Cancer Stage Group"
/*
Probably don't need to constraint most elements appearing in the current mCODE diff. 
The only meaningful diffs are on focus, zeroing out some things, binding method to a staging system.
*/
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* component 0..0
* focus only Reference(PrimaryCancerCondition)
* method from CancerStagingSystemVS (extensible)


Profile: TNMClinicalStageGroup
Id: TNMClinicalStageGroup
Parent: CancerStageGroup
Title: "TNM Clinical Stage Group"
Description: "The extent of the cancer in the body, according to the TNM classification system, based on information obtained prior to neoadjuvant treatment and surgery, e.g. based on evidence such as physical examination, imaging, and/or biopsy."
* status, code, subject, effective[x], valueCodeableConcept, method MS
* code = LNC#21908-9 "Stage group.clinical Cancer"
* subject only Reference(CancerPatient)
* focus only Reference(PrimaryCancerCondition)
* performer only Reference(Practitioner)
* value[x] only CodeableConcept
* valueCodeableConcept from TNMStageGroupVS
// We should be able to remove the next four lines after 0.4.0 release
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.ordered = false
* extension ^slicing.rules = #open
*hasMember contains 
    TNMClinicalPrimaryTumorCategory 0..1 and
    TNMClinicalRegionalNodesCategory 0..1 and
    TNMClinicalDistantMetastasesCategory 0..1


TNMCategory