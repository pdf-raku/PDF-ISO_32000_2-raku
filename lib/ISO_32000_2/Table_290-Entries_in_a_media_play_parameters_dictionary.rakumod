use v6;
role ISO_32000_2::Table_290-Entries_in_a_media_play_parameters_dictionary {
    method Type {...};
    method PL {...};
    method MH {...};
    method BE {...};
}

=begin pod

=head1 Description

Table 290 — Entries in a media play parameters dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaPlayParams for a media play parameters dictionary.

=head2 PL [dictionary]
- (Optional) A media players dictionary (see 13.2.7.2, "Media players dictionary") that identifies, among other things, players that are valid and not valid for playing the media.
If this object is non-viable, the media play parameters dictionary is considered non-viable.

=head2 MH [dictionary]
- (Optional) A dictionary whose entries (see "Table 291 — Entries in a media play parameters MH/BE dictionary") is honoured for the media play parameters to be considered viable.

=head2 BE [dictionary]
- (Optional) A dictionary whose entries (see "Table 291 — Entries in a media play parameters MH/BE dictionary") is only be honoured in a "best effort" sense.

=end pod
