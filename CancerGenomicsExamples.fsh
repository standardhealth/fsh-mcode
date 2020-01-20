Instance: mCODECancerGeneticVariantExample01
InstanceOf: CancerGeneticVariant
//Id: mCODECancerGeneticVariantExample01
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerGeneticVariant"
* status = #final "Final"
// category is inherited, does not need to be set
* method = LNC#LA26398-0 "Sequencing"
// valueCodeableConcept has alternate codings depending on where to place the interpretation of "Positive or Negative".
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[GeneStudied].valueCodeableConcept = HGNC#HGNC:11389 "STK11" // NOTE: HGNC and HGVS codes have special characters in them so SUSHI needs to handle this.
* component[VariationCode].valueCodeableConcept = CLINVAR#619728 "NC_000019.8:g.1171707G>A"
* component[GenomicDNAChange].valueCodeableConcept = HGVS#NC_000019.8:g.1171707G>A "NC_000019.8:g.1171707G>A"
* component[GenomicSourceClass].valueCodeableConcept = LNC#LA6684-0 "Somatic"

Instance: mCODECancerGenomicsReportExample01
InstanceOf: mCODECancerGenomicsReportExample01
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/GenomicsReport"
* status = #final "Final"
// * category = OBSCAT#GE "Genetics"  // mlt: supposedly, fixed values are inherited and does not need to be specified.
// * code = LNC#81247-9 "Master HL7 genetic variant reporting panel"  // ditto on inheritance
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* issued = "2019-04-01T11:45:33+11:00"
* Result[CancerGeneticVariant] = mCODECancerGeneticVariantExample01)
* Result[GenomicRegionStudied] = mCODEGenomicRegionStudiedExample01)


Instance: mCODEGenomicRegionStudiedExample01
InstanceOf: GenomicRegionStudied
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* issued = "2019-04-01T11:45:33+11:00"
* component[GeneStudied].valueCodeableConcept = HGNC#619728 "STK11"