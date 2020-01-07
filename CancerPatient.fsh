Alias:   USCoreCondition = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition
Alias:   USCoreDocumentReference = http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentReference
Alias:   USCoreEncounter = http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Alias:   USCoreLocation = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Alias:   USCoreMedicationRequest = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Alias:   USCoreMedicationStatement = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationstatement
Alias:   USCorePatient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias:   USCorePractitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias:   USCoreObservationLab = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab

Profile: CancerPatient
Parent: Patient //USCorePatient
Id: CancerPatient
Title: "Cancer Patient"
/* There seem to be several unnecessary or unintended diffs in mCODE Patient:
 1) maritalStatus binding is not changed in US Core; it should be extensible, not required
 2) organization should be Reference(Organization), not Reference(US Core Organization)
 3) US Core doesn't profile generalPractitioner. Neither should mCODE.
 4) managingOrganization should be Reference(Organization)
 5) We should probably call this "CancerPatient", not "Patient", to avoid confusion
 6) The only remaining difference is deceased is Must Support
*/
* deceased[x] MS
