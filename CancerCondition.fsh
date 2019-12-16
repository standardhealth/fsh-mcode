// No way to designate CancerCondition as abstract. We could make it a mixin, but that is not supported yet.
Profile: CancerCondition
Parent:  Condition  // USCoreCondition
Id: CancerCondition
Title: "Cancer Condition"
Description:  "Abstract class for describing a primary or secondary metastatic neoplastic diseases."
// We should be able to remove the next four lines after 0.4.0 release
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.ordered = false
* extension ^slicing.rules = #open
* extension contains HistologyMorphologyBehavior 0..1
* category = SCT#64572001 "Disease"
* severity 0..0
* bodySite from CancerBodyLocationVS (preferred)
// add PractitionerRole to asserter
* asserter only Reference(Practitioner | PractitionerRole)
* recorder only Reference(Practitioner | PractitionerRole)

Profile: PrimaryCancerCondition
Id: PrimaryCancerCondition
Title: "Primary Cancer Condition"
Parent: CancerCondition
Description: """
Records the history of the primary cancer condition, the original or first tumor in the body (Definition from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/primary-tumor)). Cancers that are not clearly secondary (i.e., of uncertain origin or behavior) should be documented as primary.

Cancer staging information summarized in this profile should reflect the most recent staging assessment on the patient, and should be updated if and when there is a new staging assessment. Past staging assessments will be preserved in instances of the TNMClinicalStageGroup and/or TNMPathologicalStageGroup, which refer back to PrimaryCancerCondition.

Conformance note: For the code attribute, to be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html), SNOMED CT must be used unless there is no suitable code, in which case ICD-10-CM can be used.
"""
* code from PrimaryOrUncertainBehaviorCancerDisorderVS (extensible)
* stage.assessment only Reference(CancerStageGroup)


Extension:  HistologyMorphologyBehavior
Id: HistologyMorphologyBehavior
Title: "Histology-Morphology-Behavior"
Description: "A description of the morphologic and behavioral characteristics of the cancer."
* value[x] only CodeableConcept
* valueCodeableConcept from HistologyMorphologyBehaviorVS (extensible)
