Alias:  LNC = http://loinc.org

Profile:  CancerDiseaseStatus
Parent:   Observation
Id:       CancerDiseaseStatus
Title:    "Cancer Disease Status"
Description:    "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc."
// We should be able to remove next two lines after 0.4.0 release
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
// 
* extension contains EvidenceType 0..*
// The following line is right syntax, but it is generating an error. Nick is looking into it (12/16/2019)
* extension[EvidenceType].valueCodeableConcept from CancerDiseaseStatusEvidenceTypeVS (required)
* effective[x], valueCodeableConcept MS
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* interpretation 0..1
// US-Core references are generating errors. Not sure what release will contain this functionality. 
* basedOn only Reference(ServiceRequest | http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest)
* partOf only Reference(MedicationAdministration | MedicationStatement | Procedure)
* code = LNC#88040-1 "Response to cancer treatment"
* subject only http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
* focus only Reference(PrimaryCancerCondition | SecondaryCancerCondition | Tumor)
* encounter only http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
* effective[x] only dateTime or Period
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* value[x] only CodeableConcept
* valueCodeableConcept from ConditionStatusTrendVS (required)
* derivedFrom only 	Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentReference | Media | QuestionnaireResponse | Observation)


Extension: EvidenceType
Title: "Evidence Type"
Id:  EvidenceType
* value[x] only CodeableConcept
