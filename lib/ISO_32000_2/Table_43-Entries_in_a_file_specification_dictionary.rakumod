use v6;
role ISO_32000_2::Table_43-Entries_in_a_file_specification_dictionary {
    method Type {...};
    method FS {...};
    method F {...};
    method UF {...};
    method DOS {...};
    method Mac {...};
    method Unix {...};
    method ID {...};
    method V {...};
    method EF {...};
    method RF {...};
    method Desc {...};
    method CI {...};
    method Thumb {...};
    method EP {...};
    method AFRelationship {...};
}

=begin pod

=head1 Description

Table 43 — Entries in a file specification dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required if an EF, EP or RF entry is present; recommended always) The type of PDF object that this dictionary describes; is Filespec for a file specification dictionary.

=head2 FS [name]
- (Optional) The name of the file system that is used to interpret this file specification. If this entry is present, all other entries in the dictionary is interpreted by the designated file system. PDF defines only one standard file system name, URL (see 7.11.5, "URL specifications"); an application can register other names (see Annex E, "Extending PDF"). This entry is independent of the F and UF entries.

=head2 F [string]
- (Required if the DOS, Mac, and Unix entries are all absent; amended with the UF entry for PDF 1.7) A file specification string of the form described in 7.11.2, "File specification strings" or (if the file system is URL) a uniform resource locator, as described in 7.11.5, "URL specifications".
The UF entry is used in addition to the F entry. The UF entry provides cross-platform and cross-language compatibility and the F entry provides backwards compatibility. A PDF reader uses the value of the UF key, when present, instead of the F key.
(PDF 2.0) For unencrypted wrapper documents for an encrypted payload document (see 7.6.7, "Unencrypted wrapper document") the F entry does not contain or be derived from the encrypted payload’s actual file name. This is to avoid potential disclosure of sensitive information in the original filename. The value of F for encrypted payload documents includes the name of the cryptographic filter needed to decrypt the document. See the example in 7.6.7, "Unencrypted wrapper document".

=head2 UF [text string]
- (Optional, but recommended if the F entry exists in the dictionary; PDF 1.7) A Unicode text string that provides file specification of the form described in 7.11.2, "File specification strings". This is a text string as defined in 7.9.2.2, "Text string type". The F entry is included along with this entry for backwards compatibility reasons. A PDF reader uses the value of the UF key, when present, instead of the F key.
(PDF 2.0) For unencrypted wrapper documents for an encrypted payload document (see 7.6.7, "Unencrypted wrapper document") the UF entry does not contain or be derived from the encrypted payload’s actual file name. This is to avoid potential disclosure of sensitive information in the original filename.

=head2 DOS [byte string]
- (Optional; deprecated in PDF 2.0) A file specification string (see 7.11.2, "File specification strings") representing a DOS file name.

=head2 Mac [byte string]
- (Optional; deprecated in PDF 2.0) A file specification string (see 7.11.2, "File specification strings") representing a Mac OS file name.

=head2 Unix [byte string]
- (Optional; deprecated in PDF 2.0) A file specification string (see 7.11.2, "File specification strings") representing a UNIX file name.

=head2 ID [array]
- (Optional) An array of two byte strings constituting a file identifier (see 14.4, "File identifiers") that is included in the referenced file.
NOTE 1 The use of this entry improves a PDF processor’s chances of finding the intended file, and allows a PDF processor to warn the user if the file has changed since the link was made.

=head2 V [boolean]
- (Optional; PDF 1.2) A flag indicating whether the file referenced by the file specification is volatile (changes frequently with time). If the value is true, applications does not cache a copy of the file. For example, a movie annotation referencing a URL to a live video camera could set this flag to true to notify the PDF reader that it should re-acquire the movie each time it is played. Default value: false.

=head2 EF [dictionary]
- (Required if RF is present; PDF 1.3; amended to include the UF key in PDF 1.7) A dictionary containing a subset of the F and UF keys corresponding to the entries by those names in the file specification dictionary. The value of each such key is an embedded file stream (see 7.11.4, "Embedded file streams") containing the corresponding file. If this entry is present, the Type entry is required and the file specification dictionary is indirectly referenced.
(PDF 2.0) For unencrypted wrapper documents for an encrypted payload document (see 7.6.7, "Unencrypted wrapper document") the EF dictionary is required for the file stream containing the encrypted payload.

=head2 RF [dictionary]
- (Optional; PDF 1.3) A dictionary with the same structure as the EF dictionary, which is present. For each key in this dictionary, the same key appears in the EF dictionary of this file specification dictionary. Each value is a related files array (see 7.11.4.2, "Related files arrays") identifying files that are related to the corresponding file in the EF dictionary. If this entry is present, the Type entry is required and the file specification dictionary is indirectly referenced.

=head2 Desc [text string]
- (Optional; PDF 1.6) Descriptive text associated with the file specification. It is used for file specification dictionaries referenced from the EmbeddedFiles name tree (see 7.7.4, "Name dictionary").

=head2 CI [dictionary]
- (Optional; is indirect reference; PDF 1.7) A collection item dictionary, which is used to create the user interface for portable collections (see 7.11.6, "Collection items").

=head2 Thumb [stream]
- (Optional; PDF 2.0) A stream object defining the thumbnail image for the file specification. (See 12.3.4, "Thumbnail images")

=head2 EP [dictionary]
- (PDF 2.0; Required if this file specification references an encrypted payload document as described in 7.6.7, "Unencrypted wrapper document") The value of this key is an encrypted payload dictionary which identifies that the file specified in the EF dictionary is an encrypted payload.

=head2 AFRelationship [name]
- (Optional; PDF 2.0) A name value that represents the relationship between the component of this PDF document that refers to this file specification and the associated file denoted by this file specification dictionary. See 14.13, "Associated files" for more details. These values represent the following relationships:
Source is used if this file specification is the original source material for the associated content.
Data is used if this file specification represents information used to derive a visual presentation – such as for a table or a graph.
Alternative is used if this file specification is an alternative representation of content, for example audio.
Supplement is used if this file specification represents a supplemental representation of the original source or data that may be more easily consumable (e.g., A MathML version of an equation).
EncryptedPayload is used if this file specification is an encrypted payload document that is displayed to the user if the PDF processor has the cryptographic filter needed to decrypt the document.
FormData is used if this file specification is the data associated with the AcroForm (see 12.7.3, "Interactive form dictionary") of this PDF.
Schema is used if this file specification is a schema definition for the associated object (e.g. an XML schema associated with a metadata stream).
Unspecified is used when the relationship is not known or cannot be described using one of the other values.
NOTE 2 Unspecified is to be used only when no other value correctly reflects the relationship.
Second-class names (see Annex E, “Extending PDF") is used to represent other types of relationships.
Default: Unspecified
NOTE 3 The value of AFRelationship does not explicitly provide any processing instructions for a PDF processor. It is provided for information and semantic purposes for those processors that are able to use such additional information.

=end pod
