use v6;
role ISO_32000_2::Table_252-Entries_in_an_FDF_template_dictionary {
    method TRef {...};
    method Fields {...};
    method Rename {...};
}

=begin pod

=head1 Description

Table 252 — Entries in an FDF template dictionary

=head1 Methods (Entries)

=head2 TRef [dictionary]
- (Required) A named page reference dictionary (see "Table 253 — Entries in an FDF named page reference dictionary") that specifies the location of the template.

=head2 Fields [array]
- (Optional) An array of references to FDF field dictionaries (see "Table 249 — Entries in an FDF field dictionary") describing the root fields that is imported (those with no ancestors in the field hierarchy).

=head2 Rename [boolean]
- (Optional) A flag that specifies whether fields imported from the template is renamed in the event of name conflicts with existing fields.
If this flag is true, fields with such conflicting names is renamed to guarantee their uniqueness. If false, the fields is not renamed; this results in multiple fields with the same name in the target document. Each time the FDF file provides attributes for a given field name, all fields with that name is updated. See the Note in this subclause for further discussion.
Default value: true.

=end pod
