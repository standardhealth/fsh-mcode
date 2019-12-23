Profile:    ECOGPerformanceStatus
Parent:     Observation
Id:         ECOGPerformanceStatus
Title:      "ECOG Performance Status"
Description:    "The Eastern Cooperative Oncology Group (ECOG) Performance Status represents the patient's functional status and is used to determine their ability to tolerate therapies in serious illness, specifically for chemotherapy. (Definition from: [LOINC](https://loinc.org/89262-0/))."

* status, code, subject, effective[x], valueCodeableConcept MS
* category 0..1
* subject 1..1
* value[x] 1..1
* interpretation 0..1
* dataAbsentReason 0..0
* bodysite 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0
* basedOn only Reference(ServiceRequest|ProcedureRequest)
* partOf only Reference(Procedure)
* category only ObservationCategoryCodes (extensible)
* code = LNC#89262-0 "ECOG Performance Status [Interpretation]"
* subject only Reference(Patient)
* focus only Reference(Resource)
* encounter only Reference(USCoreEncounter)
* effective[x] only dateTime or Period 
* performer only Reference(USCorePractitioner)
* value[x] only valueCodeableConcept
* valueCodeableConcept from ECOGPerformanceStatusVS (required)
* derivedFrom only Reference(USCoreDocumentReference | Media | QuestionnaireResponse | Observation)