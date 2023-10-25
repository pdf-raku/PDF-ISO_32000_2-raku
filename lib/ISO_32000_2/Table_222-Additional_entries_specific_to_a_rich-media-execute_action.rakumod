use v6;
role ISO_32000_2::Table_222-Additional_entries_specific_to_a_rich-media-execute_action {
    method S {...};
    method TA {...};
    method TI {...};
    method CMD {...};
}

=begin pod

=head1 Description

Table 222 — Additional entries specific to a rich-media-execute action

=head1 Methods (Entries)

=head2 S [name]
- (Required; PDF 2.0) The type of action that this dictionary describes; is RichMediaExecute for a rich-media-execute action.

=head2 TA [dictionary]
- (Required; PDF 2.0) An indirect object reference to an annotation dictionary (of Subtype RichMedia) upon which to execute the command.

=head2 TI [dictionary]
- (Optional; PDF 2.0) A dictionary that is an indirect object reference to a RichMediaInstance dictionary that is also present in the Instances array of the annotation.

=head2 CMD [dictionary]
- (Required; PDF 2.0) A RichMediaCommand dictionary containing the command name and arguments to be executed when the rich-media-execute action is invoked. See "Table 223 — Entries in a RichMediaCommand dictionary".

=end pod
