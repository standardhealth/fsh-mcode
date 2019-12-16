Profile:  CancerDiseaseStatus
Parent:   Observation
Id:       CancerDiseaseStatus
Title:    "Cancer Disease Status"
Description:    "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc."
// We should be able to remove the next four lines after 0.4.0 release
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.ordered = false
* extension ^slicing.rules = #open
* extension contains EvidenceType 0..*
// The following line is correct, but it is generating an error. Nick is looking into it (12/16/2019)
* extension[EvidenceType].valueCodeableConcept from CancerDiseaseStatusEvidenceTypeVS (required)
* effective[x], valueCodeableConcept MS
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* interpretation 0..1
// Not sure if `basedOn` should be MedicationRequest instead of US Core MedicationRequest, or limited to only ServiceRequest
* basedOn only Reference(ServiceRequest | USCoreMedicationRequest)
// Should `partOf` include MedicationAdministration or MedicationStatement?
* partOf only Reference(MedicationAdministration | MedicationStatement | Procedure)
* code = LNC#88040-1 "Response to cancer treatment"
// change from US Core Patient to CancerPatient
* subject only Reference(CancerPatient)
* focus only Reference(PrimaryCancerCondition | SecondaryCancerCondition | Tumor)
// Should this be Encounter, or US Core Encounter?
* encounter only USCoreEncounter
* effective[x] only dateTime or Period
* performer only Reference(USCorePractitioner)
* value[x] only CodeableConcept
* valueCodeableConcept from ConditionStatusTrendVS (required)
// MK added ImagingStudy and MolecularSequence - I think these were omitted only because they weren't in OBF
* derivedFrom only 	Reference(USCoreDocumentReference | Media | QuestionnaireResponse | Observation | ImagingStudy | MolecularSequence)


Extension: EvidenceType
Title: "Evidence Type"
Id:  EvidenceType
* value[x] only CodeableConcept
