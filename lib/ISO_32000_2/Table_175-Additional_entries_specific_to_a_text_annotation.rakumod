use v6;
role ISO_32000_2::Table_175-Additional_entries_specific_to_a_text_annotation {
    method Subtype {...};
    method Open {...};
    method Name {...};
    method State {...};
    method StateModel {...};
}

=begin pod

=head1 Description

Table 175 — Additional entries specific to a text annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Text for a text annotation.

=head2 Open [boolean]
- (Optional) A flag specifying whether the annotation shall initially be displayed open. Default value: false (closed).

=head2 Name [name]
- (Optional) The name of an icon that is used in displaying the annotation. Interactive PDF processors provides predefined icon appearances for at least the following standard names:
Comment, Key, Note, Help, NewParagraph, Paragraph, Insert
Additional names may be supported as well. Default value: Note.

=head2 State [text string]
- (Optional; PDF 1.5) The state to which the original annotation is set; see 12.5.6.3, "Annotation states".
Default: Unmarked if StateModel is Marked; None if StateModel is Review.

=head2 StateModel [text string]
- (Required if State is present, otherwise optional; PDF 1.5) The state model corresponding to State; see 12.5.6.3, "Annotation states"

=end pod
