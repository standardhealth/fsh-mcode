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
// workaround for https://github.com/FHIR/sushi/issues/148: "Pattern in StructureDefinition not reflected in Instance" opened 1-25-2020 by MK
* category = ObsCat#laboratory "laboratory"

/* mCODECancerGeneticVariantExample02 is an example of the 
 * CancerGeneticVariant to represent a single mutation test.
 * This example demonstrates a test for a single germline mutation, BRCA1 gene.c.185delAG, equivalent to the LOINC test https://loinc.org/21637-4/.
 */
Instance: mCODECancerGeneticVariantExample02
InstanceOf: CancerGeneticVariant
* id = "mCODECancerGeneticVariantExample02"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerGeneticVariant"
* status = #final "Final"
* method = LNC#LA26398-0 "Sequencing"
// valueCodeableConcept has alternate codings depending on where to place the interpretation of "Positive or Negative".
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[GeneStudied].valueCodeableConcept = HGNC#HGNC:1100 "BRCA1" // NOTE: HGNC and HGVS codes have special characters in them so SUSHI needs to handle this.
* component[GenomicDNAChange].valueCodeableConcept = HGVS#NG_005905.2:g.126148_126152GTAAA[1] "NG_005905.2:g.126148_126152GTAAA[1]"
* component[GenomicSourceClass].valueCodeableConcept = LNC#LA6683-2 "Germline"
// workaround for https://github.com/FHIR/sushi/issues/148: "Pattern in StructureDefinition not reflected in Instance" opened 1-25-2020 by MK
* category = ObsCat#laboratory "laboratory"

Instance: mCODECancerGenomicsReportExample01
InstanceOf: CancerGenomicsReport
* id = "mCODECancerGenomicsReportExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/CancerGenomicsReport"
* status = #final "Final"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* specimen = Reference(Specimen/mCODEGeneticSpecimenExample01)
* issued = "2019-04-01T11:45:33+11:00"
* result[CancerGeneticVariant] = Reference(Observation/mCODECancerGeneticVariantExample01)
* result[GenomicRegionStudied] = Reference(mCODEGenomicRegionStudiedExample01)
// workaround for https://github.com/FHIR/sushi/issues/148: "Pattern in StructureDefinition not reflected in Instance" opened 1-25-2020 by MK
* category = DiagosticService#LAB

Instance: mCODEGenomicRegionStudiedExample01
InstanceOf: GenomicRegionStudied
* id = "mCODEGenomicRegionStudiedExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/GenomicRegionStudied"
* status = #final "final"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* issued = "2019-04-01T11:45:33+11:00"
* component[GeneStudied].valueCodeableConcept = HGNC#619728 "STK11" 
// workaround for https://github.com/FHIR/sushi/issues/148: "Pattern in StructureDefinition not reflected in Instance" opened 1-25-2020 by MK
* category = ObsCat#laboratory "laboratory"

Instance: mCODETumorMarkerExample01 
InstanceOf: TumorMarker
* id = "mCODETumorMarkerExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/TumorMarker"
* status = #final "final"
* code = LNC#39004-7 "Epidermal growth factor receptor Ag [Presence] in Tissue"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* performer = Reference(mCODEPractitionerExample01) 
* valueCodeableConcept = SCT#10828004 "Positive (qualifier value)"
// workaround for https://github.com/FHIR/sushi/issues/148: "Pattern in StructureDefinition not reflected in Instance" opened 1-25-2020 by MK
* category = ObsCat#laboratory "laboratory"

Instance: mCODEGeneticSpecimenExample01 
InstanceOf: GeneticSpecimen
* id = "mCODEGeneticSpecimenExample01"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/GeneticSpecimen"
* status = #available "Available"
* subject = Reference(mCODEPatientExample01)
* processing.timeDateTime = "2019-03-20"
* collection.collector = Reference(mCODEPractitionerExample01) 
* type = SPTY#TISS "Tissue"
* collection.bodySite = SCT#41224006 "Structure of lower lobe of left lung (body structure)"