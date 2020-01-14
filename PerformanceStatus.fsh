Alias:   LNC = http://loinc.org
Alias:   USCorePatient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient


Profile:    KarnofskyPerformanceStatus
Parent:     Observation
Id:         KarnofskyPerformanceStatus
Title:      "Karnofsky Performance Status"
Description:    "The Karnofsky Performance Status (KPS) is a tool used to measure a patient's functional status. It can be used to compare the effectiveness of different therapies and to help assess the prognosis of certain patients, such as those with certain cancers. The KPS score ranges from 0 to 100 in intervals of 10. Higher scores are associated with better functional status, with 100 representing no symptoms or evidence of disease, and 0 representing death."

* status, code, subject, effective[x], valueCodeableConcept MS 
* category 0..1
* subject 1..1
* value[x] 1..1
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* basedOn only Reference (ServiceRequest | CarePlan)
* partOf only Reference (Procedure)
* category from ObservationCategoryCodes (extensible)
* code = LNC#89245-5 "Karnofsky Performance Status [Interpretation]"
* subject only Reference(USCorePatient)
* effective[x] only dateTime or Period 
* performer only Reference(Practitioner)
* value[x] only CodeableConcept
* valueCodeableConcept from KarnofskyPerformanceStatusVS (required)

Profile:    ECOGPerformanceStatus
Parent:     Observation
Id:         ECOGPerformanceStatus
Title:      "ECOG Performance Status"
Description:    "The Eastern Cooperative Oncology Group (ECOG) Performance Status represents the patient's functional status and is used to determine their ability to tolerate therapies in serious illness, specifically for chemotherapy. (Definition from: [LOINC](https://loinc.org/89262-0/))."

* status, code, subject, effective[x], valueCodeableConcept MS
* category 0..1
* subject 1..1
* value[x] 1..1
* dataAbsentReason 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* basedOn only Reference(ServiceRequest | CarePlan)
* partOf only Reference(Procedure)
* category from ObservationCategoryCodes (extensible)
* code = LNC#89262-0 "ECOG Performance Status [Interpretation]"
* subject only Reference(USCorePatient)
* effective[x] only dateTime or Period 
* performer only Reference(Practitioner)
* value[x] only CodeableConcept
* valueCodeableConcept from ECOGPerformanceStatusVS (required)
