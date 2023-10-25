use v6;
role ISO_32000_2::Table_220-Additional_entries_specific_to_a_go-to-ThreeD-view_action {
    method S {...};
    method TA {...};
    method V {...};
}

=begin pod

=head1 Description

Table 220 — Additional entries specific to a go-to-3D-view action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is GoTo3DView for a transition action.

=head2 TA [dictionary]
- (Required) The target annotation for which to set the view.

=head2 V [(various)]
- (Required) The view to use. It may be one of the following types:

=end pod
