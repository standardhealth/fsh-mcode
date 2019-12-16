Profile:  OncologyMedicationStatement
Parent:   MedicationStatement  // change to US Core Medication Statement
Id:       OncologyMedicationStatement
Title:    "Oncology Medication Statement"
Description:    """A record of the use of a medication (individual administration or entire course). The use may be reported by the patient or clinician and adminstration does not have to be directly observed.

Preference is given to using the National Library of Medicine (NLM) RxNorm terminology for medications. RxNorm is a coding standard established by the Office of the National Coordinator (ONC). However, RxNorm is restricted to FDA-approved drugs and does not include clinical trial drugs. MedicationStatement allows for the inclusion of other coding systems like the NCI Thesaurus (NCIT) to represent clinical trial oncology drugs.
"""
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension contains 
    TreatmentIntent 0..1 MS and 
    TerminationReason 0..* MS 
* status, medication[x], subject, effective[x], dateAsserted, derivedFrom MS
* basedOn only Reference(ServiceRequest | http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest)
* partOf only Reference(MedicationAdministration | MedicationStatement | Procedure | Observation)
* subject only http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
* context only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter | EpisodeOfCare)
* effective[x] 1..1
* informationSource only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient | http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner | RelatedPerson | http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)
* reasonCode 0..1
* reasonReference only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition | Observation | DiagnosticReport)
* dosage 0..1

Extension: TreatmentIntent
Title: "Treatment Intent"
Id:  TreatmentIntent
* value[x] only CodeableConcept
* valueCodeableConcept from TreatmentIntentVS (required)


Extension: TerminationReason
Title: "Termination Reason"
Id:  TerminationReason
* value[x] only CodeableConcept
* valueCodeableConcept from TerminationReasonVS (required)


