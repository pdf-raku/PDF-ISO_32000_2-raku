use v6;
role ISO_32000_2::Table_210-Additional_entries_specific_to_a_URI_action {
    method S {...};
    method URI {...};
    method IsMap {...};
}

=begin pod

=head1 Description

Table 210 — Additional entries specific to a URI action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is URI for a URI action.

=head2 URI [ASCII string]
- (Required) The uniform resource identifier to resolve, encoded in UTF-8.

=head2 IsMap [boolean]
- (Optional) A flag specifying whether to track the mouse position when the URI is resolved (see the discussion following this Table). Default value: false.
This entry applies only to actions triggered by the user’s clicking an annotation; it is ignored for actions associated with outline items or with a document’s OpenAction entry.

=end pod
