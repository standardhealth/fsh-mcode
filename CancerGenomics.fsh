Alias:   LNC = http://loinc.org
Alias:   HGVS = http://varnomen.hgvs.org
Alias:   GTR = http://www.ncbi.nlm.nih.gov/gtr
Alias:   IDTYPE = http://terminology.hl7.org/CodeSystem/v2-0203
Alias:   USCoreObservationLab = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab

Profile:    CancerGeneticVariant
Parent:     USCoreObservationLab
Id:         CancerGeneticVariant
Title:      "Cancer Genetic Variant"
Description:    "Records an alteration in the most common DNA nucleotide sequence. The term variant can be used to describe an alteration that may be benign, pathogenic, or of unknown significance. The term variant is increasingly being used in place of the term mutation."
* status, code, subject, effective[x], valueCodeableConcept, method MS
* bodySite 0..0
* referenceRange 0..0
* hasMember 0..0
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains
    AccessionIdentifier 0..1 MS and
    FillerOrderNumber 0..1 MS and
    PlacerOrderNumber 0..1 MS
* identifier[AccessionIdentifier].type = IDTYPE#ACSN
* identifier[FillerOrderNumber].type = IDTYPE#FILL
* identifier[PlacerOrderNumber].type = IDTYPE#PLAC
* code = LNC#69548-6 "Genetic variant assessment"
* specimen only Reference(GeneticSpecimen) 
* value[x] only CodeableConcept
* valueCodeableConcept from https://fhir.loinc.org/ValueSet/LL1971-2 (required)
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    GeneStudied 0..* MS and
    VariationCode 0..* MS and
    GenomicDNAChange 0..1 MS and
    GenomicSourceClass 0..1 MS and
    AminoAcidChange 0..1 MS and
    AminoAcidChangeType 0..1 MS and
    CytogeneticLocation 0..* MS and
    CytogeneticNomenclature 0..1 MS
/*
* component[GeneStudied] ^short = "Gene studied [ID]"
* component[GeneStudied].code = LNC#48018-6
* component[GeneStudied].value[x] only CodeableConcept
* component[GeneStudied].valueCodeableConcept 1..1
* component[GeneStudied].valueCodeableConcept from http://www.genenames.org/geneId (extensible)
* component[VariationCode] ^short = "Discrete genetic variant"
* component[VariationCode].code = LNC#81252-9
* component[VariationCode].value[x] only CodeableConcept
* component[VariationCode].valueCodeableConcept 1..1
* component[VariationCode].valueCodeableConcept from http://www.ncbi.nlm.nih.gov/clinvar (preferred)
* component[GenomicDNAChange] ^short = "Genomic DNA change (gHGVS)"
* component[GenomicDNAChange].code = LNC#81290-9
* component[GenomicDNAChange].value[x] only CodeableConcept
* component[GenomicDNAChange].valueCodeableConcept 1..1
* component[GenomicDNAChange].valueCodeableConcept from http://varnomen.hgvs.org (required)
* component[GenomicSourceClass] ^short = "Genomic source class [Type]"
* component[GenomicSourceClass].code = LNC#48002-0
* component[GenomicSourceClass].value[x] only CodeableConcept
* component[GenomicSourceClass].valueCodeableConcept 1..1
* component[GenomicSourceClass].valueCodeableConcept from https://fhir.loinc.org/ValueSet/LL378-1 (required)
* component[AminoAcidChange] ^short = "Amino acid change (pHGVS)"
* component[AminoAcidChange].code = LNC#48005-3
* component[AminoAcidChange].value[x] only CodeableConcept
* component[AminoAcidChange].valueCodeableConcept 1..1
* component[AminoAcidChange].valueCodeableConcept from http://varnomen.hgvs.org (required)
* component[AminoAcidChangeType] ^short = "Amino acid change [Type]"
* component[AminoAcidChangeType].code = LNC#48006-1
* component[AminoAcidChangeType].value[x] only CodeableConcept
* component[AminoAcidChangeType].valueCodeableConcept 1..1
* component[AminoAcidChangeType].valueCodeableConcept from https://fhir.loinc.org/ValueSet/LL380-7 (required)
* component[CytogeneticLocation] ^short = "Cytogenetic (chromosome) location"
* component[CytogeneticLocation].code = LNC#48001-2
* component[CytogeneticLocation].value[x] 1..1 // CG Reporting IG does not constrain the CytogeneticLocation value type.
* component[CytogeneticNomenclature] ^short = "Variant ISCN"
* component[CytogeneticNomenclature].code = LNC#81291-7
* component[CytogeneticNomenclature].value[x] 1..1 // CG Reporting IG does not constrain the CytogeneticLocation value type.

// alternate way of defining slices (not yet supported)

Slice:     GeneStudied
Parent:    ObservationComponent
Id:        GeneStudied
Title:     "Gene Studied"
Description: "Gene studied [ID]"
* code = LNC#48018-6
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from http://www.genenames.org/geneId (extensible)

Slice:     VariationCode
Parent:    ObservationComponent
Id:        VariationCode
Title:     "Variation Code"
Description: "Discrete genetic variant"
* code = LNC#81252-9
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from http://www.ncbi.nlm.nih.gov/clinvar (preferred)

Slice:     GenomicDNAChange
Parent:    ObservationComponent
Id:        GenomicDNAChange
Title:     "Genomic DNA Change"
Description: "Genomic DNA change (gHGVS)"
* code = LNC#81290-9
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from http://varnomen.hgvs.org (required)

Slice:     GenomicSourceClass
Parent:    ObservationComponent
Id:        GenomicSourceClass
Title:     "Genomic Source Class"
Description: "Genomic source class [Type]"
* code = LNC#48002-0
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from https://fhir.loinc.org/ValueSet/LL378-1 (required)

Slice:     AminoAcidChange
Parent:    ObservationComponent
Id:        AminoAcidChange
Title:     "Amino Acid Change"
Description: "Amino acid change (pHGVS)"
* code = LNC#48005-3
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from http://varnomen.hgvs.org (required)

Slice:     AminoAcidChangeType
Parent:    ObservationComponent
Id:        AminoAcidChangeType
Title:     "Amino Acid Change Type"
Description: "Amino acid change [Type]"
* code = LNC#48006-1
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from https://fhir.loinc.org/ValueSet/LL380-7 (required)

Slice:     CytogeneticLocation
Parent:    ObservationComponent
Id:        CytogeneticLocation
Title:     "Cytogenetic Location"
Description: "Cytogenetic (chromosome) location"
* code = LNC#48001-2
* value[x] 1..1 // CG Reporting IG does not constrain the CytogeneticLocation value type.

Slice:     CytogeneticNomenclature
Parent:    ObservationComponent
Id:        CytogeneticNomenclature
Title:     "Cytogenetic Nomenclature"
Description: "Variant ISCN"
* code = LNC#81291-7
* value[x] 1..1 // CG Reporting IG does not constrain the CytogeneticLocation value type.
*/


Profile:        TumorMarkerTest
Parent:         USCoreObservationLab
Id:             TumorMarker
Title:          "Tumor Marker"
Description:    "The result of a tumor marker test. Tumor marker tests are generally used to guide cancer treatment decisions and monitor treatment, as well as to predict the chance of recovery and cancer recurrence. A tumor marker is a substance found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (noncancer) conditions. Most tumor markers are made by both normal cells and cancer cells, but they are made in larger amounts by cancer cells. A tumor marker may help to diagnose cancer, plan treatment, or find out how well treatment is working or if cancer has come back. Examples of tumor markers include CA-125 (in ovarian cancer), CA 15-3 (in breast cancer), CEA (in colon cancer), and PSA (in prostate cancer). Tumor markers differ from genetic markers in that they are measured at the levels of the protein and substance post-RNA protein synthesis. (Definition adapted from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/tumor-marker-test) and [Cancer.Net](https://www.cancer.net/navigating-cancer-care/diagnosing-cancer/tests-and-procedures/tumor-marker-tests)).

Implementation note: The data value for TumorMarkerTest has cardinality is 0..1 (required if known) because when the test result is indeterminate, no quantitative data value will be reported. Instead, the reason for the null value will be reported in the DataAbsentReason field."
* status, code, subject, effective[x], valueCodeableConcept MS
* bodySite 0..0
* referenceRange 0..1
* hasMember 0..0
* component 0..0
* interpretation 0..1
* subject 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type.coding.code"
* identifier ^slicing.rules = #open
* identifier contains
    AccessionIdentifier 0..1 MS and
    FillerOrderNumber 0..1 MS and
    PlacerOrderNumber 0..1 MS
* basedOn only Reference(ServiceRequest | MedicationRequest)
* partOf only Reference(MedicationAdministration | MedicationStatement | Procedure)
* code from TumorMarkerTestVS (extensible)
* subject only Reference(CancerPatient)
* focus only Reference(CancerConditionParent)
* effective[x] only dateTime or Period
* performer only Reference(Practitioner) 

Profile:    GeneticSpecimen
Parent:     Specimen
Id:         GeneticSpecimen
Title:      "Genetic Specimen"
Description:    "A small sample of blood, hair, skin, amniotic fluid (the fluid that surrounds a fetus during pregnancy), or other tissue which is excised from a subject for the purposes of genomics testing or analysis."
* type 1..1 MS
* type from GeneticSpecimenTypeVS
* collection.bodySite.extension contains 
    Laterality 0..1 and
    AnatomicalOrientation 0..* and
    RelationToLandmark 0..*
* collection.bodySite, collection.bodySite.extension[Laterality] MS 

// ****** TO BE ADDED: CancerGenomicsReport ******
/*
Profile:    CancerGenomicsReport
Parent:     US Core Diagnostic Report Profile
Id:         CancerGenomicsReport
Title:      "Cancer Genomics Report"
Description:    "Genetic analysis summary report. The report may include one or more tests, with two distinct test types. The first type is a targeted mutation test, where a specific mutation on a specific gene is tested for. The result is either positive or negative for that mutation. The second type is a more general test for variants. This type of test returns the identity of variants found in a certain region of the genome.

The identity of non-genomic laboratory tests is typically represented by a LOINC code. However, many genetic tests and panels do not have LOINC codes, although some might have an identifier in NCBI Genetic Testing Registry (GTR), a central location for voluntary submission of genetic test information by providers. To identify the diagnostic report, the name of the report must be in the text sub-field of the code structure. If there is a coded identifier from GTR, LOINC, or other source, then it should be included into the the code sub-field of the code structure. If there is no suitable code, the code can be omitted."
*/
