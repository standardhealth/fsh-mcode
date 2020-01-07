Alias:   LNC = http://loinc.org
Alias:   SCT = http://snomed.info/sct
Alias:   UCUM = http://unitsofmeasure.org
Alias:   MTH = http://ncimeta.nci.nih.gov
Alias:   ICD10CM = http://hl7.org/fhir/sid/icd-10-cm 
Alias:   RXN = http://www.nlm.nih.gov/research/umls/rxnorm
Alias:   CPT = http://www.ama-assn.org/go/cpt
Alias:   ICD10PCS = http://www.nlm.nih.gov/research/umls/icd10pcs
Alias:   AJCC = http://cancerstaging.org
Alias:   GTR = http://www.ncbi.nlm.nih.gov/gtr
Alias:   CLINVAR = http://www.ncbi.nlm.nih.gov/clinvar
Alias:   IDTYPE = http://terminology.hl7.org/CodeSystem/v2-0203
Alias:   HGNC = http://www.genenames.org/geneId
Alias:   HGVS = http://varnomen.hgvs.org
Alias:   SPTY = http://terminology.hl7.org/CodeSystem/v2-0487
Alias:   USCoreCondition = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition
Alias:   USCoreDocumentReference = http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentReference
Alias:   USCoreEncounter = http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Alias:   USCoreLocation = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Alias:   USCoreMedicationRequest = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Alias:   USCoreMedicationStatement = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationstatement
Alias:   USCorePatient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias:   USCorePractitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias:   USCoreObservationLab = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab


// restore and remove AssertedDate extension (below)
// Alias: AssertedDate = http://hl7.org/fhir/StructureDefinition/condition-assertedDate
// temporary!~
Extension: AssertedDate
Id: AssertedDate
Title: "Asserted Date"
Description: "Date when the condition was asserted"
* value[x] only dateTime


// No way to designate CancerCondition as abstract. We could make it a mixin, but that is not supported yet.
Profile: CancerCondition
Parent:  Condition  // USCoreCondition
Id: CancerCondition
Title: "Cancer Condition"
Description:  "Abstract class for describing a primary or secondary metastatic neoplastic diseases."
* extension contains AssertedDate 0..1 and HistologyMorphologyBehavior 0..1
* bodySite.extension contains 
    Laterality 0..1 and
    AnatomicalOrientation 0..* and
    RelationToLandmark 0..*
* extension[AssertedDate], extension[HistologyMorphologyBehavior], bodySite, bodySite.extension[Laterality] MS
* category = SCT#64572001 "Disease"
* severity 0..0
* bodySite from CancerBodyLocationVS (preferred)
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
/* Issues relative to mCODE 0.9.x
1) asserter should include PractitionerRole
2) recorder should include PractitionerRole
3) Laterality should be 0..1, not 0..*
*/
* extension contains 
    HistologyMorphologyBehavior 0..1 and
    AssertedDate 0..1
* code from PrimaryOrUncertainBehaviorCancerDisorderVS (extensible)
* stage.assessment only Reference(CancerStageGroupParent)

Profile: SecondaryCancerCondition
Parent: CancerCondition
Id: SecondaryCancerCondition
Title: "Secondary Cancer Condition"
Description: "Records the history of secondary neoplasms, including location(s) and the date of onset of metastases. A secondary cancer results from the spread (metastasization) of cancer from its original site (Definition from: NCI Dictionary of Cancer Terms).

Conformance note: For the code attribute, to be compliant with US Core Profiles, SNOMED CT must be used unless there is no suitable code, in which case ICD-10-CM can be used."
* extension contains 
    HistologyMorphologyBehavior 0..1 and
    AssertedDate 0..1 and
    RelatedPrimaryCancerCondition 0..1
* code from SecondaryCancerDisorderVS
* stage 0..0

// Extensions

Extension:  HistologyMorphologyBehavior
Id: HistologyMorphologyBehavior
Title: "Histology-Morphology-Behavior"
Description: "A description of the morphologic and behavioral characteristics of the cancer."
* value[x] only CodeableConcept
* valueCodeableConcept from HistologyMorphologyBehaviorVS (extensible)

Extension: RelatedPrimaryCancerCondition
Id: RelatedPrimaryCancerCondition
Title: "Related Primary Cancer Condition"
Description: "The primary cancer related to this secondary cancer."
* value[x] only Reference
* valueReference only Reference(PrimaryCancerCondition)
