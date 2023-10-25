use v6;
role ISO_32000_2::Table_257-Entries_in_the_DocMDP_transform_parameters_dictionary {
    method Type {...};
    method P {...};
    method V {...};
}

=begin pod

=head1 Description

Table 257 — Entries in the DocMDP transform parameters dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is TransformParams for a transform parameters dictionary.

=head2 P [number]
- (Optional) The access permissions granted for this document. Changes to a PDF that are incremental updates which include only the data necessary to add DSS’s 12.8.4.3, "Document Security Store (DSS)" and/or document timestamps 12.8.5, "Document timestamp (DTS) dictionary" to the document is not considered as changes to the document as defined in the choices below.
Valid values is:
1 No changes to the document is permitted; any change to the document invalidates the signature.
2 Permitted changes is filling in forms, instantiating page templates, and signing; other changes invalidates the signature.
3 Permitted changes is the same as for 2, as well as annotation creation, deletion, and modification; other changes invalidates the signature.
Default value: 2.

=head2 V [name]
- (Optional) The DocMDP transform parameters dictionary version. The only valid value is 1.2.
NOTE This value is a name object, not a number.
Default value: 1.2.

=end pod
