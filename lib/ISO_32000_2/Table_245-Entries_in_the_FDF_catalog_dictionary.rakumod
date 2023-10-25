use v6;
role ISO_32000_2::Table_245-Entries_in_the_FDF_catalog_dictionary {
    method Version {...};
    method FDF {...};
}

=begin pod

=head1 Description

Table 245 — Entries in the FDF catalog dictionary

=head1 Methods (Entries)

=head2 Version [name]
- (Optional; PDF 1.4) The version of the FDF specification to which this FDF file conforms (for example, 1.4) if later than the version specified in the file’s header (see 12.7.8.2.2, "FDF header"). If the header specifies a later version, or if this entry is absent, the document conforms to the version specified in the header.
The value of this entry is a name object, not a number, and therefore is preceded by a slash character (/) when written in the FDF file (for example, /1.4).

=head2 FDF [dictionary]
- (Required) The FDF dictionary for this file (see "Table 246 — Entries in the FDF dictionary").

=end pod
