Profile: CancerPatient
Parent: Patient //USCorePatient
Id: CancerPatient
Title: "Cancer Patient"
// The only difference is deceased is Must Support
* deceased[x] MS
// We probably should NOT required link.other to be a CancerPatient (CIMPL gave us no control over it)
