use v6;
role ISO_32000_2::Table_96-Entries_in_an_optional_content_group_dictionary {
    method Type {...};
    method Name {...};
    method Intent {...};
    method Usage {...};
}

=begin pod

=head1 Description

Table 96 — Entries in an optional content group dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is OCG for an optional content group dictionary.

=head2 Name [text string]
- (Required) The name of the optional content group, suitable for presentation in an interactive PDF processor’s user interface.

=head2 Intent [name or array]
- (Optional) A single name or an array of names that represent the intended use of the graphics in the group. The values View and Design, or any second-class name may be used (see Annex E, "Extending PDF"). A PDF processor may choose to use only groups that have a specific intent and ignore others.
Default value: View. See 8.11.2.3, "Intent" for more information.

=head2 Usage [dictionary]
- (Optional) A usage dictionary describing the nature of the content controlled by the group. It may be used by features that automatically control the state of the group based on outside factors. See 8.11.4.4, "Usage and usage application dictionaries" for more information.

=end pod
