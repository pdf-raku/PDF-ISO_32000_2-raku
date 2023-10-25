use v6;
role ISO_32000_2::Table_358-Entries_in_an_object_reference_dictionary {
    method Type {...};
    method Pg {...};
    method Obj {...};
}

=begin pod

=head1 Description

Table 358 — Entries in an object reference dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is OBJR for an object reference.

=head2 Pg [dictionary]
- (Optional; is an indirect reference) The page object of the page on which the object is rendered. This entry overrides any Pg entry in the structure element containing the object reference; it is used if the structure element has no such entry.

=head2 Obj [(any)]
- (Required; is an indirect reference) The referenced object.

=end pod
