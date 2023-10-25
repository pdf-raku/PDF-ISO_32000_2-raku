use v6;
role ISO_32000_2::Table_95-Entries_in_a_reference_dictionary {
    method F {...};
    method Page {...};
    method ID {...};
}

=begin pod

=head1 Description

Table 95 — Entries in a reference dictionary

=head1 Methods (Entries)

=head2 F [file specification]
- (Required) The PDF file containing the target document.

=head2 Page [integer or text string]
- (Required) A page index or page label (see 12.4.2, "Page labels") identifying the page of the target document containing the content to be imported. This reference is a weak one and may be inadvertently invalidated if the referenced page is changed or replaced in the target document after the reference is created.

=head2 ID [array]
- (Optional) An array of two byte strings constituting a PDF file identifier (14.4, "File identifiers") for the PDF file containing the target document. The use of this entry improves a PDF processor’s chances of finding the intended PDF file and allows it to warn the user if the PDF file has changed since the reference was created.

=end pod
