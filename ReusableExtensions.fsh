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

Extension: TreatmentIntent
Id:  TreatmentIntent
Title: "Treatment Intent"
Description: "The purpose of a treatment."
* value[x] only CodeableConcept
* valueCodeableConcept from TreatmentIntentVS (required)

Extension: TerminationReason
Id:  TerminationReason
Title: "Termination Reason"
Description: "A code explaning an unplanned or premature termination of a plan of treatment, course of medication, or research study."
* value[x] only CodeableConcept
* valueCodeableConcept from TreatmentTerminationReasonVS (required)

Extension: StatementDateTime
Id:  StatementDateTime
Title: "Statement Date Time"
Description: "The point in time when the statement was created."
* value[x] only dateTime

Extension: Laterality
Id:  Laterality
Title: "Laterality"
Description: "Body side of the body location, if needed to distinguish from a similar location on the other side of the body."
* value[x] only CodeableConcept
* valueCodeableConcept from LateralityVS (required)

Extension: AnatomicalOrientation
Id:  AnatomicalOrientation
Title: "Anatomical Orientation"
Description: "AnatomicalOrientation of the body location, if needed to distinguish from a similar location in another orientation."
* value[x] only CodeableConcept
* valueCodeableConcept from AnatomicalOrientationVS (required)

Extension: RelationToLandmark
Id:  RelationToLandmark
Title: "Relation to Landmark"
Description: """
The relationship between a landmark that helps determine a body location and the body location itself. The location relative to a landmark is specified by:
* Specifying the location and type of landmark using a body site code and optional laterality/orientation,
* Specifying the direction from the landmark to the body location, and
* Specifying the distance from the landmark to the body location.
"""
* extension contains
    LandmarkType 0..1 and
    LandmarkLocation 0..1 and
    LandmarkToBodyLocationDirection 0..1 and
    LandmarkToBodyLocationDistance 0..1

Extension: LandmarkType
Id:  LandmarkType
Title: "Landmark Type"
Description: "The type of feature that constitutes the landmark, particularly if the landmark is an acquired body structure or physical object."
* value[x] only CodeableConcept
* valueCodeableConcept from LandmarkTypeVS (extensible)

Extension: LandmarkLocation
Id:  LandmarkLocation

Title: "Landmark Location"
Description: "The body location of the landmark, specified by a location code and optional laterality and orientation."
// change from `code` to BodySiteCode and bind the code to a value set
// Also change BodySiteCode from 0..1 to 1..1
* extension contains
    BodySiteCode 1..1 and
    Laterality 0..1 and
    AnatomicalOrientation 0..*

Extension: BodySiteCode
Id:  BodySiteCode
Title: "Body Site Code"
Description: "An anatomical location represented as a code."
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/ValueSet/body-site (example)

Extension: LandmarkToBodyLocationDirection
Id:  LandmarkToBodyLocationDirection
Title: "Landmark to Body Location Direction"
Description: "The direction from the landmark to the body location of interest, given as a clockface direction or anatomical direction."
* value[x] only CodeableConcept
* valueCodeableConcept from AnatomicalDirectionVS (preferred)

Extension: LandmarkToBodyLocationDistance
Id:  LandmarkToBodyLocationDistance
Title: "Landmark to Body Location Distance"
Description: "How far the body location of interest is from the given landmark."
* value[x] only Quantity
* valueQuantity from UnitsOfLengthVS (required)