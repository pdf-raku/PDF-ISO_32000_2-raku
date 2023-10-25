use v6;
role ISO_32000_2::Table_292-Entries_in_a_media_duration_dictionary {
    method Type {...};
    method S {...};
    method T {...};
}

=begin pod

=head1 Description

Table 292 — Entries in a media duration dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is MediaDuration for a media duration dictionary.

=head2 S [name]
- (Required) The subtype of media duration dictionary. Valid values are:
I The duration is the intrinsic duration of the associated media
F The duration is infinity
T The duration is specified by the T entry
The media duration dictionary is non-viable if the interactive PDF processor does not recognise the value of this entry.

=head2 T [dictionary]
- (Required if the value of S is T; otherwise ignored) A timespan dictionary specifying an explicit duration (see "Table 300 — Entries in a timespan dictionary"). A negative duration is not permitted.

=end pod
