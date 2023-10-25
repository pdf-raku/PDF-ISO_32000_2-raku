use v6;
role ISO_32000_2::Table_184-Additional_entries_specific_to_a_rubber_stamp_annotation {
    method Subtype {...};
    method Name {...};
    method IT {...};
}

=begin pod

=head1 Description

Table 184 — Additional entries specific to a rubber stamp annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Stamp for a rubber stamp annotation.

=head2 Name [name]
- (Optional) The name of an icon that is used in displaying the annotation. PDF writers includes this entry and PDF readers provides predefined icon appearances for at least the following standard names:
Approved, Experimental, NotApproved, AsIs, Expired, NotForPublicRelease, Confidential, Final, Sold, Departmental, ForComment, TopSecret, Draft, ForPublicRelease
Additional names may be supported as well. Default value: Draft.
If the IT key is present and its value is not Stamp, this Name key is not present.

=head2 IT [name]
- (Optional; PDF 2.0) A name that describes the intent of the stamp. The following values is valid:
StampSnapshot The appearance of this annotation has been taken from preexisting PDF content.
StampImage The appearance of this annotation is an Image.
Stamp The appearance of this annotation is a rubber stamp.
Default value: Stamp

=end pod
