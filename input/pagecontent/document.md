### Bundle structure

This exchange format is defined as a document type that corresponds to a 
Bundle as a FHIR resource. A Bundle contains a list of entries. The first 
entry is the Composition, in which all contained entries are then referenced.

{% include document.svg %}
*Fig. X: Schematic document structure of [IG_NAME]*

### Profiles

[[DOCUMENT_BUNDLE_PROFILE_NAME]]([StructureDefinition-xxx-bundle].html) 
defines the FHIR representation of the document bundle for [USE_CASE].

[[COMPOSITION_PROFILE_NAME]]([StructureDefinition-xxx-composition].html) 
defines the FHIR representation of the clinical content for [USE_CASE].

### Example bundle

A complete example of a [[DOCUMENT_TYPE] Bundle]([Bundle-EX-xxx].html) 
shows the practical implementation of the document structure.
