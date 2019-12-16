
Profile:  CancerRelatedRadiationProcedure
Parent:   Procedure // USCoreProcedure
Id:       CancerRelatedRadiationProcedure
Title:    "Cancer Related Radiation Procedure"
Description: """
A radiological treatment addressing a cancer condition. The scope of this profile has been narrowed to cancer-related procedures by constraining the ReasonReference and ReasonCode to cancer conditions. 

Conformance note: If an ICD-10-PCS code is used in the code attribute, and there is a semantically equivalent SNOMED CT or CPT code, the resulting Procedure instance will not be compliant with [US Core Profiles](http://hl7.org/fhir/us/core/STU3/index.html)
"""
// We should be able to remove the next four lines after 0.4.0 release
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.ordered = false
* extension ^slicing.rules = #open
* extension contains 
    RadiationDose 0..1 and 
    TreatmentIntent 0..1 and 
    TerminationReason 0..* and 
    StatementDateTime 0..1
* bodySite, extension[TreatmentIntent], extension[RadiationDose] MS    
// Removing `basedOn` constraint. The only reason it was in mCODE was that OBF didn't implement CarePlan
// Removing `partOf` constraint. The only reason this was a diff was because CIMPL generated an obf-Procedure and obf-Observation
* code from RadiationProcedureVS (extensible)
// Recorder should include PractitionerRole (added). Changed Patient to CancerPatient.
* recorder only Reference(CancerPatient | USCorePractitioner | PractitionerRole)
//  should be same as US Core -- constraint not needed
// Performer must be a practitioner or practitioner role
* performer.actor only Reference(USCorePractitioner | PractitionerRole)
// location should be same as US Core -- constraint not needed
* reasonCode from CancerDisorderVS (extensible)
* reasonReference only Reference(PrimaryCancerCondition | SecondaryCancerCondition)
* bodySite from RadiationTargetBodySiteVS (extensible)
* bodySite.extension contains 
// Laterality changed from 0..* to 0..1 (possible bug in CIMPL or mCODE 0.9 spec)
    Laterality 0..1 and
    AnatomicalOrientation 0..* and
    RelationToLandmark 0..*
* focalDevice 0..0


Extension: RadiationDose
Id: RadiationDose
Title:  "Radiation Dose"
Description: "Information related to the dose of radiation received in a RadiationProcedure, including the dose per fraction, the number of fractions delivered, and the total radiation dose delivered."
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.ordered = false
* extension ^slicing.rules = #open
* extension contains 
    RadiationDosePerFraction 0..1 and
    RadiationFractionsDelivered 0..1 and
    TotalRadiationDoseDelivered 0..1

Extension: RadiationDosePerFraction
Id: RadiationDosePerFraction
Title: "Radiation Dose Per Fraction"
Description: "The amount of radiation administered during a single session (fraction) of radiation therapy therapy."
* value[x] only Quantity
* valueQuantity = UCUM#cGy

Extension: RadiationFractionsDelivered
Id: RadiationFractionsDelivered
Title: "Radiation Fractions Delivered"
Description: "Records the total number of treatment sessions (fractions) administered during the first course of therapy. Corresponds to LOINC 21950-2 'Number of radiation treatment' [sic]."
* value[x] only Quantity
* valueQuantity = UCUM#1

Extension: TotalRadiationDoseDelivered
Id: TotalRadiationDoseDelivered
Title: "Total Radiation Dose Delivered"
Description: "The total amount of radiation dose delivered for the course of therapy. (source: SNOMED, ASTRO)"
* value[x] only Quantity
* valueQuantity = UCUM#cGy





