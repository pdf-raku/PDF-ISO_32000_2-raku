use v6;
role ISO_32000_2::Table_94-Entries_common_to_all_group_attributes_dictionaries {
    method Type {...};
    method S {...};
}

=begin pod

=head1 Description

Table 94 — Entries common to all group attributes dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Group for a group attributes dictionary.

=head2 S [name]
- (Required) The group subtype, which identifies the type of group whose attributes this dictionary describes and determines the format and meaning of the dictionary’s remaining entries. The only group subtype defined is Transparency; see 11.6.6, "Transparency group XObjects", for the remaining contents of this type of dictionary.

=end pod
