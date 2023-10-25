use v6;
role ISO_32000_2::Table_214-Additional_entries_specific_to_a_hide_action {
    method S {...};
    method T {...};
    method H {...};
}

=begin pod

=head1 Description

Table 214 — Additional entries specific to a hide action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is Hide for a hide action.

=head2 T [dictionary, text string, or array]
- (Required) The annotation or annotations to be hidden or shown, is specified in any of the following forms:

=head2 H [boolean]
- (Optional) A flag indicating whether to hide the annotation (true) or show it (false). Default value: true.

=end pod
