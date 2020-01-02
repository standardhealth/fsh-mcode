Instance: mCODECancerGeneticVariantExample01
InstanceOf: CancerGeneticVariant
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/onco-core-CancerGeneticVariant"
* status = #final "Final"
// category is inherited, does not need to be set
* method = LNC#LA26398-0 "Sequencing"
// valueCodeableConcept has alternate codings depending on where to place the interpretation of "Positive or Negative".
* valueCodeableConcept.coding[0] = LNC#69548-6 "Genetic variant assessment"
* valueCodeableConcept.coding[1] = SCT#10828004 "Positive (qualifier value)"
* subject = Reference(mCODEPatientExample01)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = LNC#LA9633-4 "Present"
* component[0].code.coding = LNC#48018-6 "Gene studied [ID]"
* component[0].valueCodeableConcept = HGNC#HGNC:11389 "STK11" // NOTE: HGNCand HGVS codes have special characters in them so SUSHI needs to handle this.
* component[1].code.coding = LNC#81252-9 "Discrete genetic variant"
* component[1].valueCodeableConcept = CLINVAR#619728 "NC_000019.8:g.1171707G>A"
* component[2].code.coding = LNC#81290-9 "Genomic DNA change (gHGVS)"
* component[2].valueCodeableConcept = HGVS#NC_000019.8:g.1171707G>A "NC_000019.8:g.1171707G>A"
* component[3].code.coding = LNC#48002-0 "Genomic source class [Type]"
* component[3].valueCodeableConcept = LNC#LA6684-0 "Somatic"