use v6;
role ISO_32000_2::Table_186-Additional_entries_specific_to_a_popup_annotation {
    method Subtype {...};
    method Parent {...};
    method Open {...};
}

=begin pod

=head1 Description

Table 186 — Additional entries specific to a popup annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Popup for a popup annotation.

=head2 Parent [dictionary]
- (Optional; is an indirect reference) The parent annotation with which this popup annotation is associated.
If this entry is present, the parent annotation’s Contents, M, C, and T entries (see "Table 170 — Entries in an appearance dictionary") overrides those of the popup annotation itself.
NOTE See also the Popup entry in "Table 172 — Additional entries in an annotation dictionary specific to markup annotations".

=head2 Open [boolean]
- (Optional) A flag specifying whether the popup annotation shall initially be displayed open. Default value: false (closed).

=end pod
