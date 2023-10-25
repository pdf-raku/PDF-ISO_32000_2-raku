use v6;
role ISO_32000_2::Table_360-Entries_common_to_all_attribute_object_dictionaries {
    method O {...};
    method NS {...};
}

=begin pod

=head1 Description

Table 360 — Entries common to all attribute object dictionaries

=head1 Methods (Entries)

=head2 O [name]
- (Required) The name of the PDF processor creating the attribute data. The value shall either be a NSO, UserProperties (see "Table 361 — Additional entries in an attribute object dictionary for user properties"), one of the values from 14.8.5, "Standard structure attributes", or conform to the guidelines described in Annex E, "Extending PDF".
If the value for the O entry is NSO then the NS entry is present, and identifies the owner of the attribute object.

=head2 NS [dictionary]
- (Required if the value of the O entry is NSO; not permitted otherwise; PDF 2.0) An indirect reference to a namespace dictionary defining the namespace that attributes with this attribute object dictionary belong to (see 14.7.4, "Namespaces"). If not present, the attributes in this attribute object dictionary do not have a namespace.
NOTE Because the NS entry is now reserved within the attribute object dictionary, attributes from existing namespaces with a matching name will not be able to be used.

=end pod
