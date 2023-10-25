use v6;
role ISO_32000_2::Table_196-Entries_common_to_all_action_dictionaries {
    method Type {...};
    method S {...};
    method Next {...};
}

=begin pod

=head1 Description

Table 196 — Entries common to all action dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Action for an action dictionary.

=head2 S [name]
- (Required) The type of action that this dictionary describes; see "Table 201 — Action types" for specific values.

=head2 Next [dictionary or array]
- (Optional; PDF 1.2) The next action or sequence of actions that is performed after the action represented by this dictionary. The value is either a single action dictionary or an array of action dictionaries that is performed in order; see Note 1 for further discussion.

=end pod
