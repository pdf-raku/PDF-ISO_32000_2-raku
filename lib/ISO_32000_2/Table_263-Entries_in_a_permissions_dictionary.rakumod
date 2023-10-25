use v6;
role ISO_32000_2::Table_263-Entries_in_a_permissions_dictionary {
    method DocMDP {...};
    method UR3 {...};
}

=begin pod

=head1 Description

Table 263 — Entries in a permissions dictionary

=head1 Methods (Entries)

=head2 DocMDP [dictionary]
- (Optional) An indirect reference to a signature dictionary (see "Table 255 — Entries in a signature dictionary"). This dictionary contains a Reference entry that is a signature reference dictionary (see "Table 255 — Entries in a signature dictionary") that has a DocMDP transform method (see 12.8.2.2, "DocMDP") and corresponding transform parameters.
If this entry is present, PDF processors shall enforce the permissions specified by the P entry in the DocMDP transform parameters dictionary and shall also validate the corresponding signature based on whether any of these permissions have been violated.

=head2 UR3 [dictionary]
- (Optional; deprecated in PDF 2.0) A signature dictionary that may be used to specify and validate additional capabilities (usage rights) granted for this document; that is, the enabling of features of a PDF processor that are not available by default.
The signature dictionary contains a Reference entry that is a signature reference dictionary that has a UR transform method (see 12.8.2.3, "UR"). The transform parameter dictionary for this method indicates which additional permissions is granted for the document. If the signature is valid and recognized by the PDF processor, then the PDF processor shall allow the specified permissions for the document, in addition to the default permissions.
NOTE For example, a PDF processor may not permit saving documents by default. The signature can be used to validate that the additional permissions placed within the PDF document have been granted by the authority or agent that did the signing.

=end pod
