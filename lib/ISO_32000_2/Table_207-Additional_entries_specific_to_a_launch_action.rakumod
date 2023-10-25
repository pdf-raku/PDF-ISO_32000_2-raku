use v6;
role ISO_32000_2::Table_207-Additional_entries_specific_to_a_launch_action {
    method S {...};
    method F {...};
    method Win {...};
    method Mac {...};
    method Unix {...};
    method NewWindow {...};
}

=begin pod

=head1 Description

Table 207 — Additional entries specific to a launch action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Launch for a launch action.

=head2 F [file specification]
- (Required if none of the entries Win, Mac, or Unix is present) The application that is launched or the document that is opened or printed. If this entry is absent and the interactive PDF processor does not understand any of the alternative entries, it does nothing.

=head2 Win [dictionary]
- (Optional; deprecated in PDF 2.0) A dictionary containing Microsoft WindowsTM specific launch parameters (see "Table 208 — Entries in a Microsoft WindowsTM launch parameter dictionary").

=head2 Mac [(undefined)]
- (Optional; deprecated in PDF 2.0) Mac OS–specific launch parameters; not yet defined.

=head2 Unix [(undefined)]
- (Optional; deprecated in PDF 2.0) UNIX-specific launch parameters; not yet defined.

=head2 NewWindow [boolean]
- (Optional; PDF 1.2) A flag specifying whether to open the destination document in a new window. If this flag is false, the destination document replaces the current document in the same window. If this entry is absent, the interactive PDF processor behaves in accordance with its current preference. This entry is ignored if the file designated by the F entry is not a PDF document.

=end pod
