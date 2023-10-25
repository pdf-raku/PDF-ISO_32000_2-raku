use v6;
role ISO_32000_2::Table_256-Entries_in_a_signature_reference_dictionary {
    method Type {...};
    method TransformMethod {...};
    method TransformParams {...};
    method Data {...};
    method DigestMethod {...};
}

=begin pod

=head1 Description

Table 256 — Entries in a signature reference dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is SigRef for a signature reference dictionary.

=head2 TransformMethod [name]
- (Required) The name of the transform method (see 12.8.2, "Transform methods") that shall guide the modification analysis that takes place when the signature is validated. Valid values is:
DocMDP Used to detect modifications to a document relative to a signature field that is signed by the originator of a document; see 12.8.2.2, "DocMDP"
UR (Deprecated in PDF 2.0) Used to detect modifications to a document that would invalidate a signature in a rights-enabled document; see 12.8.2.3, "UR"
FieldMDP Used to detect modifications to a list of form fields specified in TransformParams; see 12.8.2.4, "FieldMDP"

=head2 TransformParams [dictionary]
- (Optional) A dictionary specifying transform parameters (variable data) for the transform method specified by TransformMethod. Each method takes its own set of parameters. See each of the subclauses specified previously for details on the individual transform parameter dictionaries.

=head2 Data [(various)]
- (Required when TransformMethod is FieldMDP, is an indirect reference) An indirect reference to the object in the document upon which the object modification analysis is performed. For transform methods other than FieldMDP, this object is implicitly defined.

=head2 DigestMethod [name]
- (Required) A name identifying the algorithm that is used when computing the digest if not specified in the certificate. Valid values are MD5, SHA1 SHA256, SHA384, SHA512 and RIPEMD160.
NOTE (2020) The use of MD5 and SHA1 are deprecated with PDF 2.0. The DigestMethod key was also corrected to be required as no default value is defined.
Default value for PDF 1.5-1.7: MD5.

=end pod
