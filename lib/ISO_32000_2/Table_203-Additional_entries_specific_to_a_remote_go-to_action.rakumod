use v6;
role ISO_32000_2::Table_203-Additional_entries_specific_to_a_remote_go-to_action {
    method S {...};
    method F {...};
    method D {...};
    method SD {...};
    method NewWindow {...};
}

=begin pod

=head1 Description

Table 203 — Additional entries specific to a remote go-to action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is GoToR for a remote go-to action.

=head2 F [file specification]
- (Required) The file in which the destination is located.

=head2 D [name, byte string, or array]
- (Required) The destination to jump to (see 12.3.2, "Destinations"). If the value is an array defining an explicit destination (as described under 12.3.2.2, "Explicit destinations"), its first element is a page number within the remote document rather than an indirect reference to a page object in the current document. The first page is numbered 0.

=head2 SD [Array]
- (Optional; PDF 2.0) The structure destination to jump to (see 12.3.2.3, "Structure destinations"). The first element in the array is a byte string representing a structure element ID in the remote document, instead of an indirect reference to a structure element dictionary.
If present, the structure destination takes precedence over destination in the D entry.

=head2 NewWindow [boolean]
- (Optional; PDF 1.2) A flag specifying whether to open the destination document in a new window. If this flag is false, the destination document replaces the current document in the same window. If this entry is absent, the interactive PDF processor behaves in accordance with its preference.

=end pod
