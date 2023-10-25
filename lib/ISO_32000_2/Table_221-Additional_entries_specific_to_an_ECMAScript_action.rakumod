use v6;
role ISO_32000_2::Table_221-Additional_entries_specific_to_an_ECMAScript_action {
    method S {...};
    method JS {...};
}

=begin pod

=head1 Description

Table 221 — Additional entries specific to an ECMAScript action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is JavaScript for an ECMAScript action.

=head2 JS [text string or text stream]
- (Required) A text string or text stream containing the ECMAScript script to be executed.

=end pod
