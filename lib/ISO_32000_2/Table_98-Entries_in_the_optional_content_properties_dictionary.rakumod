use v6;
role ISO_32000_2::Table_98-Entries_in_the_optional_content_properties_dictionary {
    method OCGs {...};
    method D {...};
    method Configs {...};
}

=begin pod

=head1 Description

Table 98 — Entries in the optional content properties dictionary

=head1 Methods (Entries)

=head2 OCGs [array]
- (Required) An array of indirect references to all the optional content groups in the document (see 8.11.2, "Optional content groups"), in any order. Every optional content group is included in this array.

=head2 D [dictionary]
- (Required) The default viewing optional content configuration dictionary (see 8.11.4.3, "Optional content configuration dictionaries").

=head2 Configs [array]
- (Optional) An array of alternate optional content configuration dictionaries (see 8.11.4.3, "Optional content configuration dictionaries").

=end pod
