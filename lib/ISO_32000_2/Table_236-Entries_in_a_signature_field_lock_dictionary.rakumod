use v6;
role ISO_32000_2::Table_236-Entries_in_a_signature_field_lock_dictionary {
    method Type {...};
    method Action {...};
    method Fields {...};
    method P {...};
}

=begin pod

=head1 Description

Table 236 — Entries in a signature field lock dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is SigFieldLock for a signature field lock dictionary.

=head2 Action [name]
- (Required) A name which, in conjunction with Fields, indicates the set of fields that is locked. The value is one of the following:
All All fields in the document
Include All fields specified in Fields
Exclude All fields except those specified in Fields

=head2 Fields [array]
- (Required if the value of Action is Include or Exclude) An array of text strings containing field names.

=head2 P [number]
- (Optional; PDF 2.0) The access permissions granted for this document. Valid values is:
1 No changes to the document are permitted; any change to the document invalidates the signature.
2 Permitted changes is filling in forms, instantiating page templates, and signing; other changes invalidates the signature.
3 Permitted changes are the same as for 2, as well as annotation creation, deletion, and modification; other changes invalidates the signature.
There is no default value; absence of this key shall result in no effect on signature validation rules.
If MDP permission is already in effect from an earlier incremental save section or the original part of the document, the number specifies permissions less than or equal to the permissions already in effect based on signatures earlier in the document. That is, permissions can be denied but not added. If the number specifies greater permissions than an MDP value already in effect, the new number is ignored.
If the document does not have an author signature, the initial permissions in effect are those based on the number 3.
The new permission applies to any incremental changes to the document following the signature of which this key is part.

=end pod
