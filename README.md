# mCODE

mCODE™ (short for Minimal Common Oncology Data Elements) is an initiative intended to assemble a core set of structured data elements for oncology electronic health records (EHRs). mCODE is a step towards capturing research-quality data from the treatment of all cancer patients. This would enable the treatment of every cancer patient to contribute to comparative effectiveness analysis (CEA) of cancer treatments by allowing for easier methods of data exchange between health systems. mCODE has been created and is being supported by the American Society of Clinical Oncology (ASCO®)in collaboration with the MITRE Corporation.

# Building mCODE

mCODE is developed in [FHIR Shorthand (FSH)](http://build.fhir.org/ig/HL7/fhir-shorthand/), a domain-specific language (DSL) for defining the content of FHIR Implementation Guides (IG).

After you check out mCODE from Github, install SUSHI (the FSH compiler), [as instructed here](http://build.fhir.org/ig/HL7/fhir-shorthand/sushi.html). 

To compile mCODE, open a command window and change directory to the directory where mCODE has been checked out. Issue the following command:

`$ sushi . -o ./build/input/resources`

>**NOTE:** Do **not** omit the `-o` option, because that will destroy certain customizations of the implementation guide configuration.

Now run:

Windows:   `$ _genonce`

Mac:   `$ sh _genonce.sh`

This will run the HL7 IG Publisher, which will take several minutes to complete. After the publisher is finished, open the file _/build/output/index.html_ to see the resulting IG.

