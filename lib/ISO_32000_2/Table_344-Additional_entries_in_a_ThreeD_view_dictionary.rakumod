use v6;
role ISO_32000_2::Table_344-Additional_entries_in_a_ThreeD_view_dictionary {
    method Snapshot {...};
    method Params {...};
}

=begin pod

=head1 Description

Table 344 — Additional entries in a 3D view dictionary

=head1 Methods (Entries)

=head2 Snapshot [stream]
- (Optional; PDF 2.0) A stream that shall contains an image XObject (see 8.9, "Images") to be displayed when the view is invoked.
Default value: No image is used, the currently active rich media content is displayed.

=head2 Params [array]
- (Optional; PDF 2.0) An array containing View Params dictionaries (see 13.7.2.3.6, "View params dictionary").
Default value: an empty array.
NOTE (2020) The Params key was accidently omitted from earlier PDF 2.0 specifications and was reinstated in this document.

=end pod
