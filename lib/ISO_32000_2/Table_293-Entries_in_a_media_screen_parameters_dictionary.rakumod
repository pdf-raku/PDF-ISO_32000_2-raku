use v6;
role ISO_32000_2::Table_293-Entries_in_a_media_screen_parameters_dictionary {
    method Type {...};
    method MH {...};
    method BE {...};
}

=begin pod

=head1 Description

Table 293 — Entries in a media screen parameters dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaScreenParams for a media screen parameters dictionary.

=head2 MH [dictionary]
- (Optional) A dictionary whose entries (see "Table 294 — Entries in a media screen parameters MH/BE dictionary") is honoured for the media screen parameters to be considered viable.

=head2 BE [dictionary]
- (Optional) A dictionary whose entries (see "Table 294 — Entries in a media screen parameters MH/BE dictionary") is honoured.

=end pod
