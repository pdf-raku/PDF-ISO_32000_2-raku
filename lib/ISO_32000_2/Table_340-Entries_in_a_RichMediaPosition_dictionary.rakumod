use v6;
role ISO_32000_2::Table_340-Entries_in_a_RichMediaPosition_dictionary {
    method Type {...};
    method HAlign {...};
    method VAlign {...};
    method HOffset {...};
    method VOffset {...};
}

=begin pod

=head1 Description

Table 340 — Entries in a RichMediaPosition dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, it is RichMediaPosition.

=head2 HAlign [name]
- (Optional; PDF 2.0) Describes the horizontal alignment. Valid values are Near, Center, and Far.
Default value: Far

=head2 VAlign [name]
- (Optional; PDF 2.0) Describes the vertical alignment. Valid values are Near, Center, and Far.
Default value: Near

=head2 HOffset [number]
- (Optional; PDF 2.0) The offset from the alignment point specified by the HAlign key. A positive value for HOffset, when HAlign is either Near or Center, shall offset the position towards the Far direction. A positive value for HOffset, when HAlign is Far, shall offset the position towards the Near direction.
Default value: 18

=head2 VOffset [number]
- (Optional; PDF 2.0) The offset from the alignment point specified by the VAlign key. A positive value for VOffset, when VAlign is either Near or Center, shall offset the position towards the Far direction. A positive value for VOffset, when VAlign is Far, shall offset the position towards the Near direction.
Default value: 18

=end pod
