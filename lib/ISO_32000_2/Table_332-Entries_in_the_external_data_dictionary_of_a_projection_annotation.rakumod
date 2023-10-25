use v6;
role ISO_32000_2::Table_332-Entries_in_the_external_data_dictionary_of_a_projection_annotation {
    method Type {...};
    method Subtype {...};
    method M3DREF {...};
}

=begin pod

=head1 Description

Table 332 — Entries in the external data dictionary of a projection annotation

=head1 Methods (Entries)

=head2 Type [name]
- (Required; PDF 2.0) The type of PDF object that this dictionary describes; if present, is ExData for an external data dictionary.

=head2 Subtype [name]
- (Required; PDF 2.0) The type of external data that this dictionary describes; is 3DM for an association to a 3D measurement.

=head2 M3DREF [dictionary]
- (Required; PDF 2.0) An indirect reference to a 3D measurement dictionary for which this projection annotation is a comment. See 12.5.6.24, "Projection annotations".

=end pod
