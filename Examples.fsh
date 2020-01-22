Alias:   USCoreRace = http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
Alias:   USCoreBirthSex = http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex

Instance: mCODEPrimaryCancerConditionExample01
InstanceOf: PrimaryCancerCondition
* id = "mCODEPrimaryCancerConditionExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/PrimaryCancerCondition"
* clinicalStatus = #active "Active"
* verificationStatus = #confirmed "Confirmed"
* code = SCT#254637007 "Non-small cell lung cancer (disorder)"
* bodySite = SCT#39607008 "Lung structure (body structure)"
* subject = Reference(mCODEPatientExample01)
* onsetDateTime = "2019-04-01"
* asserter = Reference(mCODEPractitionerExample01)
* stage.summary = AJCC#3C "IIIC"
* stage.assessment = Reference(mCODETNMClinicalStageGroupExample01)


Instance: mCODEComorbidConditionExample01
InstanceOf: ComorbidCondition
* id = "mCODEComorbidConditionExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/ComorbidCondition"
* clinicalStatus = #active "Active"
* verificationStatus = #confirmed "Confirmed"
* code = SCT#44054006 "Type 2 diabetes mellitus"
* subject = Reference(mCODEPatientExample01)
* asserter = Reference(mCODEPractitionerExample01)
* onsetDateTime = "2018-04-01"


Instance: mCODEPatientExample01
InstanceOf: CancerPatient
* id = "mCODEPatientExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerPatient"
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

Instance: mCODEPatientExample02
InstanceOf: CancerPatient
* id = "mCODEPatientExample02"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerPatient"
// The following lines trigger an IG publisher crash
//* extension[USCoreRace].extension[ombCategory].valueCoding = USCoreRace#2186-5 "Not Hispanic or Latino"
//* extension[USCoreBirthSex] = GENDER#F 
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m456"
* name.family = "Anyperson"
* name.given[0] = "Eve"
* name.given[1] = "A."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "999-999-9999"
* contact.telecom[0].use = #home 
* contact.telecom[1].system = #email
* contact.telecom[1].value = "eve.anyperson@example.com"
* gender = #female
* birthDate = "1955-05-20"
* address.line = "456 Smith Lane"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"

Instance: mCODEOrganizationExample01
InstanceOf: USCoreOrganization
* id = "mCODEOrganizationExample01"
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "1265714091"
* active = true
* name = "Foundation Medicine"
* contact.telecom.system = #phone
* contact.telecom.value = "617-418-2200"
* address.line = "150 Second Street"
* address.city = "Cambridge"
* address.state = "MA"
* address.postalCode = "02141"
* address.country = "USA"

Instance: mCODEPractitionerExample01
InstanceOf: USCorePractitioner
* id = "mCODEPractitionerExample01"
* identifier[NPI].value = "9988776655"
* name.family = "Anydoc"
* name.given = "Kyle"
* name.prefix = "Dr."
* gender = #male
* address.use = #home
* address.line = "567 Healthcare Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "12345"
* address.country = "US"
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#MD "Doctor of Medicine"

Instance: mCODEECOGPerformanceStatusExample01 
InstanceOf: ECOGPerformanceStatus
* id = "mCODEECOGPerformanceStatusExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/ECOGPerformanceStatus" 
* status = #final "final"
* method = SCT#5880005 "Clinical examination"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* performer = Reference(mCODEPractitionerExample01) 
* valueCodeableConcept = SCT#422512005 "ECOG Performance Status - grade 1"

Instance: mCODEKarnofskyPerformanceStatusExample01
InstanceOf: KarnofskyPerformanceStatus
* id = "mCODEKarnofskyPerformanceStatusExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/KarnofskyPerformanceStatus"
* status = #final "final"
* category = #survey "survey"
* method = SCT#5880005 "Clinical examination"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* performer = Reference(mCODEPractitionerExample01)
* valueCodeableConcept = LNC#LA29177-5 "Normal activity with effort; some signs or symptoms of disease"

Instance: mCODECancerRelatedMedicationStatementExample01
InstanceOf: CancerRelatedMedicationStatement
* id = "mCODECancerRelatedMedicationStatementExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerRelatedMedicationStatement"
* status = #active "active"
* category = #community "community"
* medicationCodeableConcept = RXN#349472 "gefitinib 250 MG Oral Tablet"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* dateAsserted = "2019-04-01"
// The following line triggers an IG publisher crash -- See issue #113 (https://github.com/FHIR/sushi/issues/113)
//* extension[TreatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* dosage.text = "250mg orally once daily with or without food"
* dosage.route = SCT#26643006 "Oral use"
* dosage.doseAndRate.doseQuantity.value = 250.0
* dosage.doseAndRate.doseQuantity = UCUM#mg "mg"

Instance: mCODECancerRelatedSurgicalProcedureExample01
InstanceOf: CancerRelatedSurgicalProcedure
* id = "mCODECancerRelatedSurgicalProcedureExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerRelatedSurgicalProcedure"
* status = #completed "completed"
* code = SCT#359615001 "Partial lobectomy of lung (procedure)"
* subject = Reference(mCODEPatientExample01)
* asserter = Reference(mCODEPractitionerExample01)
* performedDateTime = "2019-03-01"
// The following line triggers an IG publisher crash
//* extension[TreatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
* reasonReference = Reference(mCODEPrimaryCancerConditionExample01)
* bodySite = SCT#41224006 "Structure of lower lobe of left lung (body structure)"

Instance: mCODECancerRelatedRadiationProcedureExample01
InstanceOf: CancerRelatedRadiationProcedure 
* id = "mCODECancerRelatedRadiationProcedureExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerRelatedRadiationProcedure"
* status = #completed "completed" 
* code = SCT#152198000 "Brachytherapy (procedure)"
* subject = Reference(mCODEPatientExample01)
* asserter = Reference(mCODEPractitionerExample01)
* performedDateTime = "2019-03-01"
// The following line triggers an IG publisher crash
//* extension[TreatmentIntent].valueCodeableConcept = SCT#373808002 "Curative - procedure intent"
//* extension[RadiationDose].extension[TotalRadiationDoseDelivered].valueQuantity = UCUM#cGy 
//* extension[RadiationDose].extension[TotalRadiationDoseDelivered].valueQuantity.value = 1200.0
* reasonReference = Reference(mCODEPrimaryCancerConditionExample01)
* bodySite = SCT#41224006 "Structure of lower lobe of left lung (body structure)"

Instance: mCODETNMClinicalStageGroupExample01
InstanceOf: TNMClinicalStageGroup
* id = "mCODETNMClinicalStageGroupExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/TNMClinicalStageGroup"
* status = #final "final" 
* category = #survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition" 
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#3C "IIIC"
* hasMember[TNMClinicalPrimaryTumorCategory] = Reference(mCODETNMClinicalPrimaryTumorCategoryExample01)
* hasMember[TNMClinicalRegionalNodesCategory] = Reference(mCODETNMClinicalRegionalNodesCategoryExample01)
* hasMember[TNMClinicalDistantMetastasesCategory] = Reference(mCODETNMClinicalRegionalNodesCategoryExample01)

Instance: mCODETNMClinicalDistantMetastasesCategoryExample01
InstanceOf: TNMClinicalDistantMetastasesCategory
* id = "mCODETNMClinicalDistantMetastasesCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/TNMClinicalDistantMetastasesCategory"
* status = #final "final" 
* category = #survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition" 
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cM0 "M0"

Instance: mCODETNMClinicalPrimaryTumorCategoryExample01
InstanceOf: TNMClinicalPrimaryTumorCategory
* id = "mCODETNMClinicalPrimaryTumorCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/TNMClinicalPrimaryTumorCategory"
* status = #final "final" 
* category = #survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition" 
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cT3 "T3"


Instance: mCODETNMClinicalRegionalNodesCategoryExample01
InstanceOf: TNMClinicalRegionalNodesCategory
* id = "mCODETNMClinicalRegionalNodesCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/TNMClinicalRegionalNodesCategory"
* status = #final "final" 
* category = #survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition" 
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cN3 "N3"


Instance: mCODETNMPathologicalStageGroupExample01
InstanceOf: TNMPathologicalStageGroup
* id = "mCODETNMPathologicalStageGroupExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/TNMPathologicalStageGroup"
* status = #final "final" 
* category = #laboratory "laboratory"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition" 
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#3C "IIIC"
* hasMember[TNMPathologicalPrimaryTumorCategory] = Reference(mCODETNMPathologicalPrimaryTumorCategoryExample01)
* hasMember[TNMPathologicalRegionalNodesCategory] = Reference(mCODETNMPathologicalRegionalNodesCategoryExample01)
* hasMember[TNMPathologicalDistantMetastasesCategory] = Reference(mCODETNMPathologicalDistantMetastasesCategoryExample01)


Instance: mCODETNMPathologicalDistantMetastasesCategoryExample01
InstanceOf: TNMPathologicalDistantMetastasesCategory
* id = "mCODETNMPathologicalDistantMetastasesCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/TNMPathologicalDistantMetastasesCategory"
* status = #final "final" 
* category = #laboratory "laboratory"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition" 
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#pM0 "M0"


Instance: mCODETNMPathologicalPrimaryTumorCategoryExample01
InstanceOf: TNMPathologicalPrimaryTumorCategory
* id = "mCODETNMPathologicalPrimaryTumorCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/TNMPathologicalPrimaryTumorCategory"
* status = #final "final" 
* category = #laboratory "laboratory"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition" 
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#pT3 "T3"


Instance: mCODETNMPathologicalRegionalNodesCategoryExample01
InstanceOf: TNMPathologicalRegionalNodesCategory
* id = "mCODETNMPathologicalRegionalNodesCategoryExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/TNMPathologicalNodesCategory"
* status = #final "final" 
* category = #laboratory "laboratory"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition" 
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#pN3 "N3"


