use v6;
role ISO_32000_2::Table_296-Entries_common_to_all_media_offset_dictionaries {
    method Type {...};
    method S {...};
}

=begin pod

=head1 Description

Table 296 — Entries common to all media offset dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaOffset for a media offset dictionary.

=head2 S [name]
- (Required) The subtype of media offset dictionary. Valid values is:
T A media offset time dictionary (see "Table 297 — Additional entries in a media offset time dictionary")
F A media offset frame dictionary (see "Table 298 — Additional entries in a media offset frame dictionary")
M A media offset marker dictionary (see "Table 299 — Additional entries in a media offset marker dictionary")
The rendition is non-viable if the interactive PDF processor does not recognise the value of this entry.

=end pod
