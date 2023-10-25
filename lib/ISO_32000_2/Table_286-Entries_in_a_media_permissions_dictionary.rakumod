use v6;
role ISO_32000_2::Table_286-Entries_in_a_media_permissions_dictionary {
    method Type {...};
    method TF {...};
}

=begin pod

=head1 Description

Table 286 — Entries in a media permissions dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaPermissions for a media permissions dictionary.

=head2 TF [ASCII string]
- (Optional) An ASCII string indicating the circumstances under which it is acceptable to write a temporary file in order to play a media clip. Valid values are:
(TEMPNEVER) Never allowed.
(TEMPEXTRACT) Allowed only if the document permissions allow content extraction; when bit 5 of the user access permissions (see "Table 22 — Standard security handler user access permissions") is set.
(TEMPACCESS) Allowed only if the document permissions allow content extraction, including for accessibility purposes; when bits 5 or 10 of the user access permissions (see "Table 22 — Standard security handler user access permissions") are set, or both.
(TEMPALWAYS) Always allowed.
Default value: (TEMPNEVER).
An unrecognised value is treated as (TEMPNEVER).

=end pod
