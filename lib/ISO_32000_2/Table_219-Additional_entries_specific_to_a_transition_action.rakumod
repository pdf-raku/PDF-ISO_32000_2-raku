use v6;
role ISO_32000_2::Table_219-Additional_entries_specific_to_a_transition_action {
    method S {...};
    method Trans {...};
}

=begin pod

=head1 Description

Table 219 — Additional entries specific to a transition action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Trans for a transition action.

=head2 Trans [dictionary]
- (Required) The transition to use for the update of the display (see "Table 164 — Entries in a transition dictionary").

=end pod
