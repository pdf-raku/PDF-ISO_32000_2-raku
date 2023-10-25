use v6;
role ISO_32000_2::Table_339-Entries_in_a_RichMediaWindow_dictionary {
    method Type {...};
    method Width {...};
    method Height {...};
    method Position {...};
}

=begin pod

=head1 Description

Table 339 — Entries in a RichMediaWindow dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, is RichMediaWindow.

=head2 Width [dictionary]
- (Optional; PDF 2.0) A dictionary with keys Default, Max, and Min describing values for the width of the Window in default user space units.
Default values: Default is 288, Max is 576, and Min is 72

=head2 Height [dictionary]
- (Optional; PDF 2.0) A dictionary with keys Default, Max, and Min describing values for the width of the Window in default user space units.
Default values: Default is 216, Max is 432, and Min is 72

=head2 Position [dictionary]
- (Optional; PDF 2.0) A RichMediaPosition dictionary describing the position of the RichMediaWindow. See "Table 340 — Entries in a RichMediaPosition dictionary" for a detailed description.

=end pod
