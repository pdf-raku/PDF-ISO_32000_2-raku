use v6;
role ISO_32000_2::Table_282-Additional_entries_in_a_media_rendition_dictionary {
    method C {...};
    method P {...};
    method SP {...};
}

=begin pod

=head1 Description

Table 282 — Additional entries in a media rendition dictionary

=head1 Methods (Entries)

=head2 C [dictionary]
- (Optional) A media clip dictionary (see 13.2.4, "Media clip objects") that specifies what is played when the media rendition object is played.

=head2 P [dictionary]
- (Required if C is not present, otherwise optional) A media play parameters dictionary (see 13.2.5, "Media play parameters") that specifies how the media rendition object is played.
Default value: a media play parameters dictionary whose entries (see "Table 290 — Entries in a media play parameters dictionary") all contain their default values.

=head2 SP [dictionary]
- (Optional) A media screen parameters dictionary (see 13.2.6, "Media screen parameters") that specifies where the media rendition object is played.
Default value: a media screen parameters dictionary whose entries (see "Table 293 — Entries in a media screen parameters dictionary") all contain their default values.

=end pod
