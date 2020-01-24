Instance: mCODECancerGeneticVariantExample01
InstanceOf: CancerGeneticVariant
* id = "mCODECancerGeneticVariantExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerGeneticVariant"
* status = #final "Final"
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

Instance: mCODECancerGeneticVariantExample02
InstanceOf: CancerGeneticVariant
* id = "mCODECancerGeneticVariantExample02"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerGeneticVariant"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
* code = LNC#69548-6 "Genetic variant assessment"
* subject = Reference(mCODEPatientExample02)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* interpretation = ObsInt#POS "Positive"
* component[GeneStudied].code = LNC#48018-6 "Gene studied [ID]"
* component[GeneStudied].valueCodeableConcept = HGNC#HGNC:1100 "BRCA1"

Instance: mCODECancerGenomicsReportExample01
InstanceOf: CancerGenomicsReport
* id = "mCODECancerGenomicsReportExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerGenomicsReport"
* status = #final "Final"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* issued = "2019-04-01T11:45:33+11:00"
* result[CancerGeneticVariant] = Reference(mCODECancerGeneticVariantExample01)
* result[GenomicRegionStudied] = Reference(mCODEGenomicRegionStudiedExample01)

Instance: mCODEGenomicRegionStudiedExample01
InstanceOf: GenomicRegionStudied
* id = "mCODEGenomicRegionStudiedExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/GenomicRegionStudied"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* issued = "2019-04-01T11:45:33+11:00"
// Commented out -- causes SUSHI to not create this example -- see issue https://github.com/FHIR/sushi/issues/112
//* component[GeneStudied].valueCodeableConcept = HGNC#619728 "STK11" 

