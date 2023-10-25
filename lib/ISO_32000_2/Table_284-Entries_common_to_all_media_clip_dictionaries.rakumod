use v6;
role ISO_32000_2::Table_284-Entries_common_to_all_media_clip_dictionaries {
    method Type {...};
    method S {...};
    method N {...};
}

=begin pod

=head1 Description

Table 284 — Entries common to all media clip dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaClip for a media clip dictionary.

=head2 S [name]
- (Required) The subtype of media clip that this dictionary describes. May be MCD for media clip data (see 13.2.4.2, "Media clip data") or MCS for a media clip section (see 13.2.4.3, "Media clip section"). The media clip is non-viable if the interactive PDF processor does not recognise the value of this entry.

=head2 N [text string]
- (Optional) The name of the media clip, for use in the user interface.

=end pod
