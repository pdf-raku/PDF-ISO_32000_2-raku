use v6;
role ISO_32000_2::Table_399-Additional_entries_specific_to_a_printers_mark_form_dictionary {
    method MarkStyle {...};
    method Colorants {...};
}

=begin pod

=head1 Description

Table 399 — Additional entries specific to a printer’s mark form dictionary

=head1 Methods (Entries)

=head2 MarkStyle [text string]
- (Optional; PDF 1.4) A text string representing the printer’s mark in human-readable form and suitable for presentation to the user.

=head2 Colorants [dictionary]
- (Optional; PDF 1.4) A dictionary identifying the individual colourants associated with a printer’s mark, such as a colour bar. For each entry in this dictionary, the key is a colourant name and the value is an array defining a Separation colour space for that colourant (see 8.6.6.4, "Separation colour spaces"). The key matches the colourant name given in that colour space.

=end pod
