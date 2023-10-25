use v6;
role ISO_32000_2::Table_271-Entries_in_a_projected_coordinate_system_dictionary {
    method Type {...};
    method EPSG {...};
    method WKT {...};
}

=begin pod

=head1 Description

Table 271 — Entries in a projected coordinate system dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required; PDF 2.0) The type of PDF object that this dictionary describes; is PROJCS for a projected coordinate system dictionary.

=head2 EPSG [integer]
- (Optional; PDF 2.0) An EPSG reference code specifying the projected coordinate system.

=head2 WKT [ASCII string]
- (Optional; PDF 2.0) A string of Well Known Text describing the projected coordinate system.

=end pod
