use v6;
role ISO_32000_2::Table_324-Entries_in_an_external_data_dictionary_used_to_markup_ThreeD_annotations {
    method Type {...};
    method Subtype {...};
    method MD5 {...};
    INIT {
        for "3DA", "3DV" {
            my &m = method {...};
            &m.set_name($_);
            $?ROLE.^add_method($_, &m);
        }
    }
}

=begin pod

=head1 Description

Table 324 — Entries in an external data dictionary used to markup 3D annotations

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is ExData for an external data dictionary.

=head2 Subtype [name]
- (Required) The type of external data that this dictionary describes; is Markup3D for a 3D comment. The only defined value is Markup3D.

=head2 3DA [dictionary or text string]
- (Required) The 3D annotation to which this markup annotation applies. The 3D annotation may be specified as a child dictionary or as the name of a 3D annotation, as specified by its NM entry. In the latter case, the 3D annotation and the markup annotation is on the same page of the document.

=head2 3DV [dictionary]
- (Required) The 3D view that this markup annotation is associated with. The annotation will be hidden unless this view is currently being used for the 3D annotation specified by 3DA.

=head2 MD5 [byte string]
- (Optional) A 16-byte string that contains the checksum of the bytes of the 3D stream data that this 3D comment is associated with. The checksum is calculated by applying the standard MD5 message-digest algorithm (described in Internet RFC 1321) to the bytes of the stream data. This value is used to determine if artwork data has changed since this 3D comment was created.
NOTE This is strictly a checksum, and is not used for security purposes.

=end pod
