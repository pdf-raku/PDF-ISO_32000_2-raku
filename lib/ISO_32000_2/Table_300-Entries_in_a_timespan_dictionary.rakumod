use v6;
role ISO_32000_2::Table_300-Entries_in_a_timespan_dictionary {
    method Type {...};
    method S {...};
    method V {...};
}

=begin pod

=head1 Description

Table 300 — Entries in a timespan dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Timespan for a timespan dictionary.

=head2 S [name]
- (Required) The subtype of timespan dictionary. The value is S (simple timespan). The rendition is non-viable if the interactive PDF processor does not recognise the value of this entry.

=head2 V [number]
- (Required) The number of seconds in the timespan. Non-integral values is allowed. Negative values is not used.
This entry is used only if the value of the S entry is S. Subtypes defined in the future need not use this entry.

=end pod
