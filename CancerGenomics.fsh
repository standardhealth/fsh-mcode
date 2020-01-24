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
* valueCodeableConcept from http://loinc.org/vs/LL1971-2 (required)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    GeneStudied 0..* MS and
    VariationCode 0..* MS and
    GenomicDNAChange 0..1 MS and
    GenomicSourceClass 0..1 MS and
    AminoAcidChange 0..1 MS and
   AminoAcidChngeType 0..1 MS and
    CytogeneticLocation 0..* MS and
    CytogeneticNomenclature 0..1 MS 
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
* component[GenomicSourceClass].valueCodeableConcept from http://fhir.loinc.org/vs/LL378-1 (required)
* component[AminoAcidChange] ^short = "Amino acid change (pHGVS)"
* component[AminoAcidChange].code = LNC#48005-3
* component[AminoAcidChange].value[x] only CodeableConcept
* component[AminoAcidChange].valueCodeableConcept 1..1
* component[AminoAcidChange].valueCodeableConcept from http://varnomen.hgvs.org (required)
// SUSHI Issue #122 -- Temporarily change name from AminoAcidChangeType toAminoAcidChngeType
* component[AminoAcidChngeType] ^short = "Amino acid change [Type]"
* component[AminoAcidChngeType].code = LNC#48006-1
* component[AminoAcidChngeType].value[x] only CodeableConcept
* component[AminoAcidChngeType].valueCodeableConcept 1..1
* component[AminoAcidChngeType].valueCodeableConcept from http://fhir.loinc.org/vs/LL380-7 (required)
* component[CytogeneticLocation] ^short = "Cytogenetic (chromosome) location"
* component[CytogeneticLocation].code = LNC#48001-2
* component[CytogeneticLocation].value[x] 1..1 
// CG Reporting IG does not constrain the CytogeneticLocation value type.
* component[CytogeneticNomenclature] ^short = "Variant ISCN"
* component[CytogeneticNomenclature].code = LNC#81291-7
* component[CytogeneticNomenclature].value[x] only CodeableConcept
* component[CytogeneticNomenclature].valueCodeableConcept 1..1
// CG Reporting IG does not constrain the CytogeneticNomenclature value type.


Profile:        TumorMarker
Parent:         USCoreObservationLab
Id:             TumorMarker
Title:          "Tumor Marker"
Description:    "The result of a tumor marker test. Tumor marker tests are generally used to guide cancer treatment decisions and monitor treatment, as well as to predict the chance of recovery and cancer recurrence. A tumor marker is a substance found in tissue or blood or other body fluids that may be a sign of cancer or certain benign (noncancer) conditions. Most tumor markers are made by both normal cells and cancer cells, but they are made in larger amounts by cancer cells. A tumor marker may help to diagnose cancer, plan treatment, or find out how well treatment is working or if cancer has come back. Examples of tumor markers include CA-125 (in ovarian cancer), CA 15-3 (in breast cancer), CEA (in colon cancer), and PSA (in prostate cancer). Tumor markers differ from genetic markers in that they are measured at the levels of the protein and substance post-RNA protein synthesis. (Definition adapted from: [NCI Dictionary of Cancer Terms](https://www.cancer.gov/publications/dictionaries/cancer-terms/def/tumor-marker-test) and [Cancer.Net](https://www.cancer.net/navigating-cancer-care/diagnosing-cancer/tests-and-procedures/tumor-marker-tests)).

Implementation note: The data value for TumorMarker has cardinality is 0..1 (required if known) because when the test result is indeterminate, no quantitative data value will be reported. Instead, the reason for the null value will be reported in the DataAbsentReason field."
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


Profile:    CancerGenomicsReport
Parent:     USCoreDiagnosticReportLab
Id:         CancerGenomicsReport
Title:      "Cancer Genomics Report"
Description:    "Genetic analysis summary report. The report may include one or more tests, with two distinct test types. The first type is a targeted mutation test, where a specific mutation on a specific gene is tested for. The result is either positive or negative for that mutation. The second type is a more general test for variants. This type of test returns the identity of variants found in a certain region of the genome.

The identity of non-genomic laboratory tests is typically represented by a LOINC code. However, many genetic tests and panels do not have LOINC codes, although some might have an identifier in NCBI Genetic Testing Registry (GTR), a central location for voluntary submission of genetic test information by providers. To identify the diagnostic report, the name of the report must be in the text sub-field of the code structure. If there is a coded identifier from GTR, LOINC, or other source, then it should be included into the the code sub-field of the code structure. If there is no suitable code, the code can be omitted."
* encounter, specimen MS  // the other MS elements are already in US Core. Do we want encounter here?
* basedOn only Reference (ServiceRequest | CarePlan)
* subject only Reference(CancerPatient)
* code = LNC#81247-9 "Master HL7 genetic variant reporting panel"
* specimen only Reference(GeneticSpecimen)
* result ^slicing.discriminator.type = #profile // #value
* result ^slicing.discriminator.path = "$this.resolve()" // "$this.resolve().code.coding.code"
* result ^slicing.rules = #open
* result ^slicing.description = "Slice based on the reference profile and code pattern"
* result contains
    CancerGeneticVariant 0..1 MS and
    GenomicRegionStudied 0..1 MS

Profile:    GenomicRegionStudied
Parent:     USCoreObservationLab
Id:         GenomicRegionStudied
Title:      "Genomic Region Studied"
Description:    "The area of the genome region referenced in testing for variants."
* code MS
* code = LNC#53041-0 "DNA region of interest panel"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains
    GeneMutations 0..* MS and
    GeneStudied 0..* MS and
    DNARegionDescription 0..* MS and
    DNARangesExamined 0..* MS and
    GenomicRegionCoordinateSystem 0..1 MS and
    GenomicReferenceSequenceId 0..1 MS

* component[GeneMutations] ^short = "Gene mutations tested for in Blood or Tissue by Molecular genetics method Nominal"
* component[GeneMutations].code = LNC#36908-2
* component[GeneMutations].value[x] only CodeableConcept
* component[GeneMutations].valueCodeableConcept 1..1
* component[GeneMutations].valueCodeableConcept from http://varnomen.hgvs.org (required)
// MK 1/23/2020 should this be http://www.genenames.org/geneId (extensible)?

* component[GeneStudied] ^short = "Gene studied [ID]"
* component[GeneStudied].code = LNC#48018-6
* component[GeneStudied].value[x] only CodeableConcept
* component[GeneStudied].valueCodeableConcept 1..1
* component[GeneStudied].valueCodeableConcept from http://www.genenames.org/geneId (extensible)

* component[DNARegionDescription] ^short = "Description for the DNA region studied in the genomics report"
* component[DNARegionDescription].code = LNC#81293-3
* component[DNARegionDescription].value[x] only string
* component[DNARegionDescription].valueString 1..1

* component[DNARangesExamined] ^short = "Range(s) of DNA sequence examined"
* component[DNARangesExamined].code = LNC#51959-5
* component[DNARangesExamined].value[x] only Range  // This seems wrong, see fsh-mcode issue #32
* component[DNARangesExamined].valueRange 1..1

* component[GenomicRegionCoordinateSystem] ^short = "A genomic coordinate is a position along a sequence."
* component[GenomicRegionCoordinateSystem].code = LNC#92822-6
* component[GenomicRegionCoordinateSystem].value[x] only CodeableConcept
* component[GenomicRegionCoordinateSystem].valueCodeableConcept 1..1
* component[GenomicRegionCoordinateSystem].valueCodeableConcept from http://fhir.loinc.org/vs/LL5323-2 (preferred)

* component[GenomicReferenceSequenceId] ^short = "Range(s) of DNA sequence examined. The genomic reference sequence is a contiguous stretch of chromosome DNA that spans all of the exons of the gene and includes transcribed and non transcribed stretches. For this ID use either the NCBI genomic nucleotide RefSeq IDs with their version number (see: NCBI.NLM.NIH.Gov/RefSeq) or use the LRG identifiers, without transcript (t or p) extensions -- when they become available. (source: LOINC)"
* component[GenomicReferenceSequenceId].code = LNC#48013-7
* component[GenomicReferenceSequenceId].value[x] 1..1
// no value type specified







/// MLT_20200117: The CG Reporting IG contains a component named 'region-coverage'. This was omitted on purpose since the profile specified a non-existing code system and code "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes". mCODE to omit until there is something substantial there.

/*  // MLT_start of block comment
 // *** alternate way of defining slices (not yet supported)***
Slice:     GeneMutations
Parent:    ObservationComponent
Id:        GeneMutations
Title:     "Gene Mutations"
Description: "ene mutations tested for in Blood or Tissue by Molecular genetics method Nominal"
* code = LNC#36908-2
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from http://www.genenames.org/geneId (extensible)

Slice:     DNARegionDescription
Parent:    ObservationComponent
Id:        DNARegionDescription
Title:     "DNA Region Description"
Description: "Description for the DNA region studied in the genomics report"
* code = LNC#81293-3
* value[x] 1..1
* value[x] only string

Slice:     DNARangesExamined
Parent:    ObservationComponent
Id:        DNARangesExamined
Title:     "DNA Ranges Examined"
Description: "Range(s) of DNA sequence examined"
* code = LNC#51959-5
* value[x] 1..1
* value[x] only Range

Slice:     GenomicRegionCoordinateSystem
Parent:    ObservationComponent
Id:        GenomicRegionCoordinateSystem
Title:     "Genomic Region Coordinate System"
Description: "A genomic coordinate is a position along a sequence."
* code = LNC#92822-6
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from http://fhir.loinc.org/vs/LL5323-2 (preferred)

Slice:     GenomicReferenceSequenceId
Parent:    ObservationComponent
Id:        GenomicReferenceSequenceId
Title:     "Genomic reference sequence identifier"
Description: "Range(s) of DNA sequence examined. The genomic reference sequence is a contiguous stretch of chromosome DNA that spans all of the exons of the gene and includes transcribed and non transcribed stretches. For this ID use either the NCBI genomic nucleotide RefSeq IDs with their version number (see: NCBI.NLM.NIH.Gov/RefSeq) or use the LRG identifiers, without transcript (t or p) extensions -- when they become available. (source: LOINC)"
* code = LNC#48013-7
* value[x] 1..1  // MLT_20200117: CG Reporting IG does not bind the value.





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
* valueCodeableConcept from http://fhir.loinc.org/vs/LL378-1 (required)

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
* valueCodeableConcept from http://fhir.loinc.org/vs/LL380-7 (required)

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

