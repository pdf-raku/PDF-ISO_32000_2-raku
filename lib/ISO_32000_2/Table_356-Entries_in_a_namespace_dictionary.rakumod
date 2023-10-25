use v6;
role ISO_32000_2::Table_356-Entries_in_a_namespace_dictionary {
    method Type {...};
    method NS {...};
    method Schema {...};
    method RoleMapNS {...};
}

=begin pod

=head1 Description

Table 356 — Entries in a namespace dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, is Namespace.

=head2 NS [text string]
- (Required; PDF 2.0) The string defining the namespace name which this entry identifies (conventionally a uniform resource identifier, or URI).

=head2 Schema [file specification]
- (Optional; PDF 2.0) A file specification identifying the schema file, which defines this namespace.

=head2 RoleMapNS [dictionary]
- (Optional; PDF 2.0) A dictionary that shall, if present, map the names of structure types used in the namespace to their approximate equivalents in another namespace. The dictionary is comprised of a set of keys representing structure element types in the namespace defined within this namespace dictionary. The corresponding value for each of these keys shall either be a single name identifying a structure element type in the default standard structure namespace or an array where the first value is a structure element type name in a target namespace with the second value being an indirect reference to the target namespace dictionary.

=end pod
