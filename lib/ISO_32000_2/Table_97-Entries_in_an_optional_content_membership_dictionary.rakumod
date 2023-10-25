use v6;
role ISO_32000_2::Table_97-Entries_in_an_optional_content_membership_dictionary {
    method Type {...};
    method OCGs {...};
    method P {...};
    method VE {...};
}

=begin pod

=head1 Description

Table 97 — Entries in an optional content membership dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is OCMD for an optional content membership dictionary.

=head2 OCGs [dictionary or array]
- (Optional) A dictionary or array of dictionaries specifying the optional content groups whose states determines the visibility of content controlled by this membership dictionary.
Null values or references to deleted objects is ignored.
If this entry is not present, is an empty array, or contains references only to null or deleted objects, the P entry has no effect on the visibility of any content.

=head2 P [name]
- (Optional) A name specifying the visibility policy for content belonging to this membership dictionary. Valid values is:
AllOn visible only if all of the entries in OCGs are ON
AnyOn visible if any of the entries in OCGs are ON
AnyOff visible if any of the entries in OCGs are OFF
AllOff visible only if all of the entries in OCGs are OFF
Default value: AnyOn

=head2 VE [array]
- (Optional; PDF 1.6) An array specifying a visibility expression, used to compute visibility of content based on a set of optional content groups; see discussion below.

=end pod
