Alias:  LNC = http://loinc.org

Profile:  CancerDiseaseStatus
Parent:   Observation
Id:       CancerDiseaseStatus
Title:    "Cancer Disease Status"
Description:    "A clinician's qualitative judgment on the current trend of the cancer, e.g., whether it is stable, worsening (progressing), or improving (responding). The judgment may be based a single type or multiple kinds of evidence, such as imaging data, assessment of symptoms, tumor markers, laboratory data, etc."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension contains EvidenceType 0..*
* effective[x], valueCodeableConcept MS
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* interpretation 0..1
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
* valueCodeableConcept from CancerDiseaseStatusEvidenceTypeVS (required)


/*
* reported[x] only boolean or Reference(Practitioner
    | PractitionerRole
    | Organization
    | RelatedPerson)
* medication[x] only CodeableConcept
* medicationCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/us-core-medication-codes (extensible)
* subject only Reference(Patient)
*/