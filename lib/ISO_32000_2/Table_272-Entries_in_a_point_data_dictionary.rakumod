use v6;
role ISO_32000_2::Table_272-Entries_in_a_point_data_dictionary {
    method Type {...};
    method Subtype {...};
    method Names {...};
    method XPTS {...};
}

=begin pod

=head1 Description

Table 272 — Entries in a point data dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required; PDF 2.0) The type of PDF object that this dictionary describes; is PtData for a point data dictionary.

=head2 Subtype [name]
- (Required; PDF 2.0) Shall be Cloud.

=head2 Names [array]
- (Required; PDF 2.0) An array of names that identify the internal data elements of the individual point arrays in the XPTS array.
There are three predefined names:
LAT latitude in degrees. The XPTS value is a number type.
LON longitude in degrees. The XPTS value is a number type.
ALT altitude in metres. The XPTS value is a number type.
NOTE These names are, in effect, column headers for the array of XPTS values.

=head2 XPTS [array]
- (Required; PDF 2.0) An array of arrays of values. The number of members in each interior array corresponds to the size of the Names array; each member in the interior arrays is of a type defined by the corresponding name in the Names array.
The XPTS array is a collection of tuples without any guaranteed ordering or relationship from point to point.

=end pod
