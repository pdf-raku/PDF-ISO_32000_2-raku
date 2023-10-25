use v6;
role ISO_32000_2::Table_157-Entries_in_a_collection_colors_dictionary {
    method Type {...};
    method Background {...};
    method CardBackground {...};
    method CardBorder {...};
    method PrimaryText {...};
    method SecondaryText {...};
}

=begin pod

=head1 Description

Table 157 — Entries in a collection colors dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes; if present, is CollectionColors for a collection colors dictionary.

=head2 Background [array]
- (Optional; PDF 2.0) An array of three numbers in the range 0.0 to 1.0, representing a DeviceRGB colour used for the background of the view.

=head2 CardBackground [array]
- (Optional; PDF 2.0) An array of three numbers in the range 0.0 to 1.0, representing a DeviceRGB colour used for the background of the card.

=head2 CardBorder [array]
- (Optional; PDF 2.0) An array of three numbers in the range 0.0 to 1.0, representing a DeviceRGB colour used for the border of the card.

=head2 PrimaryText [array]
- (Optional; PDF 2.0) An array of three numbers in the range 0.0 to 1.0, representing a DeviceRGB colour used for the primary text in a navigator.

=head2 SecondaryText [array]
- (Optional; PDF 2.0) An array of three numbers in the range 0.0 to 1.0, representing a DeviceRGB colour used for other text in a navigator.

=end pod
