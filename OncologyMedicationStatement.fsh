Profile:  CancerRelatedMedicationStatement
Parent:   USCoreMedicationStatement
Id:       CancerRelatedMedicationStatement
Title:    "Cancer-Related Medication Statement"
Description:    "A record of the use of a medication (individual administration or entire course) for a condition that is related to a primary or secondary cancer condition or comorbid condition. The use may be reported by the patient or clinician and adminstration does not have to be directly observed."
// We should be able to remove the next four lines after 0.4.0 release
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.ordered = false
* extension ^slicing.rules = #open
* extension contains 
    TreatmentIntent 0..1 MS and 
    TerminationReason 0..* MS 
// The MS are the same as US Core -- do not need to be specified here
// basedOn should be same as US Core (include CarePlan not in mCode 0.9)
// partOf should be same as US Core (include MedicationDispense)
// subject should be same as US Core -- constraint not needed
// context should be same as US Core -- constraint not needed
// informationSource should be same as US Core -- constraint not needed
* reasonReference only Reference(PrimaryCancerCondition | SecondaryCancerCondition | Observation | DiagnosticReport | ComorbidCondition)
* effective[x] 1..1  // change from 0..1 to 1..1
* reasonCode 0..1  // change from 0..* to 0..1  (why?)
* dosage 0..1

