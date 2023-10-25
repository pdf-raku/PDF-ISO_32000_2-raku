use v6;
role ISO_32000_2::Table_270-Entries_in_a_geographic_coordinate_system_dictionary {
    method Type {...};
    method EPSG {...};
    method WKT {...};
}

=begin pod

=head1 Description

Table 270 — Entries in a geographic coordinate system dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required; PDF 2.0) The type of PDF object that this dictionary describes. If present, is GEOGCS for a geographic coordinate system dictionary.

=head2 EPSG [integer]
- (Optional; PDF 2.0) An EPSG reference code specifying the geographic coordinate system. Shall not be present if WKT is present.

=head2 WKT [ASCII string]
- (Optional; PDF 2.0) A string of Well Known Text describing the geographic coordinate system. Shall not be present if EPSG is present.

=end pod
