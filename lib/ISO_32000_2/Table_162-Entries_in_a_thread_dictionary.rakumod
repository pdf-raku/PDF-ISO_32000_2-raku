use v6;
role ISO_32000_2::Table_162-Entries_in_a_thread_dictionary {
    method Type {...};
    method F {...};
    method I {...};
    method Metadata {...};
}

=begin pod

=head1 Description

Table 162 — Entries in a thread dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Thread for a thread dictionary.

=head2 F [dictionary]
- (Required; is an indirect reference) The first bead in the thread.

=head2 I [dictionary]
- (Optional) A thread information dictionary containing information about the thread, such as its title, author, and creation date. The contents of this dictionary conforms to the syntax for the document information dictionary (see 14.3.3, "Document information dictionary").

=head2 Metadata [stream]
- (Optional; PDF 2.0; is an indirect reference) A metadata stream containing information about the thread, such as its title, author, and creation date (see 14.3.2, "Metadata streams").

=end pod
