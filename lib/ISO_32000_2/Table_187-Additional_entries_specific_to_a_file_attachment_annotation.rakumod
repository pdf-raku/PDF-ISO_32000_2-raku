use v6;
role ISO_32000_2::Table_187-Additional_entries_specific_to_a_file_attachment_annotation {
    method Subtype {...};
    method FS {...};
    method Name {...};
}

=begin pod

=head1 Description

Table 187 — Additional entries specific to a file attachment annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is FileAttachment for a file attachment annotation.

=head2 FS [file specification]
- (Required) The file associated with this annotation.

=head2 Name [name]
- (Optional) The name of an icon that is used in displaying the annotation. PDF writers includes this entry and PDF readers provides predefined icon appearances for at least the following standard names:
Graph, PushPin, Paperclip, Tag
Additional names may be supported as well. Default value: PushPin.

=end pod
