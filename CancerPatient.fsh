Profile: CancerPatient
Parent: Patient //USCorePatient
Id: CancerPatient
Title: "Cancer Patient"
/* There seem to be several unnecessary or unintended diffs in mCODE Patient:
 1) maritalStatus binding is not changed in US Core; it should be extensible, not required
 2) organization should be Reference(Organization), not Reference(US Core Organization)
 3) US Core doesn't profile generalPractitioner. Neither should mCODE.
 4) managingOrganization should be Reference(Organization)
 5) We probably should NOT required link.other to be a CancerPatient (CIMPL gave us no control over it)
*/
// The only difference is deceased is Must Support
* deceased[x] MS

