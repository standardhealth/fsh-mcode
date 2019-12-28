Instance: mCODEPrimaryCancerConditionExample01
InstanceOf: PrimaryCancerCondition
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/onco-core-PrimaryCancerCondition"
/*
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: mCODEPrimaryCancerConditionExample01</p><p><b>meta</b>: </p><p><b>clinicalStatus</b>: Active <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-clinical code 'active' = 'Active', given as 'Active'})</span></p><p><b>verificationStatus</b>: Confirmed <span style=\"background: LightGoldenRodYellow\">(Details : {http://terminology.hl7.org/CodeSystem/condition-ver-status code 'confirmed' = 'Confirmed', given as 'Confirmed'})</span></p><p><b>category</b>: Disease <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '64572001' = 'Disease', given as 'Disease'})</span></p><p><b>code</b>: Non-small cell lung cancer (disorder) <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '254637007' = 'Non-small cell lung cancer', given as 'Non-small cell lung cancer (disorder)'})</span></p><p><b>bodySite</b>: Lung structure (body structure) <span style=\"background: LightGoldenRodYellow\">(Details : {SNOMED CT code '39607008' = 'Lung', given as 'Lung structure (body structure)'})</span></p><p><b>subject</b>: <a href=\"Patient-mCODEPatientExample01.html\">John B. Anyperson. Generated Summary: id: mCODEPatientExample01; Medical Record Number = m123 (USUAL); John B. Anyperson ; ph: 555-555-5555(HOME), john.anyperson@example.com; gender: male; birthDate: 1951-01-20</a></p><p><b>onset</b>: Apr 1, 2019, 12:00:00 AM</p><p><b>asserter</b>: <a href=\"Practitioner-mCODEPractitionerExample01.html\">Kyle Anydoc, MD. Generated Summary: id: mCODEPractitionerExample01; 9988776655, 25456; Kyle Anydoc ; gender: male</a></p><h3>Stages</h3><table class=\"grid\"><tr><td>-</td><td><b>Summary</b></td><td><b>Assessment</b></td></tr><tr><td>*</td><td>clinical stage IIIC <span style=\"background: LightGoldenRodYellow\">(Details : {http://cancerstaging.org code '3C' = '3C', given as 'IIIC'})</span></td><td><a href=\"Observation-mCODETNMClinicalStageGroupExample01.html\">Generated Summary: id: mCODETNMClinicalStageGroupExample01; <span title=\"Codes: {http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span>; <span title=\"Codes: {http://loinc.org 21908-9}\">Stage group.clinical Cancer</span>; effective: Apr 1, 2019, 12:00:00 AM; <span title=\"Codes: {http://cancerstaging.org 3C}\">IIIC</span>; <span title=\"Codes: {http://ncimeta.nci.nih.gov C146985}\">AJCC Version 8</span></a></td></tr></table></div>"
*/
* clinicalStatus = #active "Active"
* verificationStatus = #confirmed "Confirmed"
// category is inherited, does not need to be set
* code = SCT#254637007 "Non-small cell lung cancer (disorder)"
* bodySite = SCT#39607008 "Lung structure (body structure)"
* subject = Reference(mCODEPatientExample01)
* onsetDateTime = "2019-04-01"
* asserter = Reference(mCODEPractitionerExample01)
* stage.summary = AJCC#3C "IIIC"
* stage.assessment = Reference(mCODETNMClinicalStageGroupExample01)


Instance: mCODEPatientExample01
InstanceOf: CancerPatient
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/obf-Patient"
/*
* text.status = #generated
* text.div = "<div xmlns="http://www.w3.org/1999/xhtml"><p><b>Generated Narrative with Details</b></p><p><b>id</b>: mCODEPatientExample01</p><p><b>meta</b>: </p><p><b>identifier</b>: Medical Record Number = m123 (USUAL)</p><p><b>name</b>: John B. Anyperson </p><p><b>telecom</b>: ph: 555-555-5555(HOME), john.anyperson@example.com</p><p><b>gender</b>: male</p><p><b>birthDate</b>: 1951-01-20</p><p><b>address</b>: 123 Main St Anytown MA 12345 US </p><h3>Communications</h3><table class=\"grid\"><tr><td>-</td><td><b>Language</b></td></tr><tr><td>*</td><td>English <span style=\"background: LightGoldenRodYellow\">(Details : {urn:ietf:bcp:47 code 'en-US' = 'English (Region=United States)', given as 'English (Region=United States)'})</span></td></tr></table></div>"
*/
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Anyperson"
* name.given[0] = "John"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home 
* contact.telecom[1].system = #email
* contact.telecom[1].value = "john.anyperson@example.com"
* gender = #male
* birthDate = "1951-01-20"
* address.line = "123 Main St"
* address.city = "Anytown"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"


Instance: mCODEECOGPerformanceStatusExample01 
InstanceOf: ECOGPerformanceStatus
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/obf-ECOGPerformanceStatus" 

* status = #final "final"
* focus = Reference(mCODEPrimaryCancerConditionExample01)
* method = SCT#5880005 "Clinical examination"
* code = LNC#89262-0 "ECOG Performance Status [Interpretation]"
* subject = Reference(mCODEPatientExample01)
* onsetDateTime = "2019-04-01"
* asserter = Reference(mCODEPractitionerExample01) 
* valueCodeableConcept = SCT#422512005 "ECOG Performance Status - grade 1"


Instance: mCODEKarnofskyPerformanceStatusExample01
InstanceOf: KarnofskyPerformanceStatus
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/obf-KarnofskyPerformanceStatus"

* status = #final "final"
* focus = Reference(mCODEPrimaryCancerConditionExample01)
* method = SCT#5880005 "Clinical examination"
* code = LNC#89245-5 "Karnofsky Performance Status [Interpretation]"
* subject = Reference(mCODEPatientExample01)
* onsetDateTime = "2019-04-01"
* asserter = Reference(mCODEPractitionerExample01)
* valueCodeableConcept = LNC#LA29177-5 "Norml activity with effort; some signs or symptoms of disease"


Instance: mCODECancerRelatedMedicationStatementExample01
InstanceOf: mCODECancerRelatedMedicationStatement
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/onco-core-CancerRelatedMedicationStatement"

* status = #active "active"
* medicationCodeableConcept = RXN#93698 "Carboplatin Injectable Solution [Paraplatin]"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* dateAsserted = "2019-04-01"
* extension.valueCodeableConcept = SCT#373808002 "Curative - procedure intent" I'm not sure how to write extensions into the example
//not sure how to write in extensions


Instance: mCODECancerRelatedSurgicalProcedureExample01
InstanceOf: mCODECancerRelatedSurgicalProcedure
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/onco-core-CancerRelatedSurgicalProcedure"

* status = #completed "completed"
* code = SCT#359615001 "Partial lobectomy of lung (procedure)"
* subject = Reference(mCODEPatientExample01)
* asserter = Reference(mCODEPractitionerExample01)
* performedDateTime = "2019-03-01"
* extension.valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
//not sure how to write in extensions
* reasonReference = Reference(mCODEPrimaryCancerConditionExample01)
* reasonCode = SCT#254637007 "Non-small cell lung cancer (disorder)"
* bodySite = SCT#41224006 "Structure of lower lobe of left lung (body structure)"