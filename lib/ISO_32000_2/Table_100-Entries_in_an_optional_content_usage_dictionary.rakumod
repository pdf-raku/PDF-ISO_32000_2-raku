use v6;
role ISO_32000_2::Table_100-Entries_in_an_optional_content_usage_dictionary {
    method CreatorInfo {...};
    method Language {...};
    method Export {...};
    method Zoom {...};
    method Print {...};
    method View {...};
    method User {...};
    method PageElement {...};
}

=begin pod

=head1 Description

Table 100 — Entries in an optional content usage dictionary

=head1 Methods (Entries)

=head2 CreatorInfo [dictionary]
- (Optional) A dictionary used by the creating application to store application-specific data associated with this optional content group. It contains two required entries:
Creator A text string specifying the application that created the group.
Subtype A name defining the type of content controlled by the group. Suggested values include but is not limited to Artwork, for graphic-design or publishing applications, and Technical, for technical designs such as building plans or schematics.
Additional entries may be included to present information relevant to the creating application or related applications.
If an Optional Content Group Dictionary (see "Table 96 — Entries in an optional content group dictionary") Intent entry contains Design then a CreatorInfo entry is included.

=head2 Language [dictionary]
- (Optional) A dictionary specifying the language of the content controlled by this optional content group. It contains the following entry:
Lang (required) A text string that specifies a language and possibly a locale (see 14.9.2, "Natural language specification"). For example, es-MX represents Mexican Spanish.
Additionally, it may contain the following entry:
Preferred (optional) A name whose values is either ON or OFF. Default value: OFF. It is used by PDF processors when there is a partial match but no exact match between the system language and the language strings in all usage dictionaries. See 8.11.4.4, "Usage and usage application dictionaries" for more information.

=head2 Export [dictionary]
- (Optional) A dictionary containing one entry, ExportState, a name whose value is either ON or OFF. This value indicates the recommended state for content in this group when the document (or part of it) is saved by a PDF processor to a format that does not support optional content (for example, a raster image format).

=head2 Zoom [dictionary]
- (Optional) A dictionary specifying a range of magnifications at which the content in this optional content group is best viewed. It contains one or both of the following entries:
min A number representing the minimum recommended magnification factor at which the group is ON. Default value: 0.
max A number representing the magnification factor below which the group is ON. Default value: infinity.

=head2 Print [dictionary]
- (Optional) A dictionary specifying that the content to be used when printing. It may contain the following optional entries:
Subtype A name object specifying the kind of content controlled by the group; for example, Trapping, PrintersMarks or Watermark.
PrintState A name that is either ON or OFF, indicating that the group is set to that state when the document is printed.

=head2 View [dictionary]
- (Optional) A dictionary that has a single entry, ViewState, a name that has a value of either ON or OFF, indicating the state of the group when the document is first opened by a PDF processor.

=head2 User [dictionary]
- (Optional) A dictionary specifying one or more users for whom this optional content group is primarily intended. This dictionary has two required entries:
Type A name object that is either Ind (individual), Ttl (title or position), or Org (organisation).
Name A text string or array of text strings representing the name(s) of the individual, position or organisation.

=head2 PageElement [dictionary]
- (Optional) A dictionary declaring that the group contains a pagination artifact. It contains one entry, Subtype, whose value is a name that is either HF (header/footer), FG (foreground image or graphics), BG (background image or graphics), or L (logo).

=end pod
