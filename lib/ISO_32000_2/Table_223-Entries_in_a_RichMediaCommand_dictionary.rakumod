use v6;
role ISO_32000_2::Table_223-Entries_in_a_RichMediaCommand_dictionary {
    method Type {...};
    method C {...};
    method A {...};
}

=begin pod

=head1 Description

Table 223 — Entries in a RichMediaCommand dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes; is RichMediaCommand.

=head2 C [text string]
- (Required; PDF 2.0) A text string specifying the script command (a primitive ECMAScript function name).
If the target instance is a 3D model, the call is made in the global context of the annotation’s instance of the 3D ECMAScript engine.

=head2 A [(various)]
- (Optional; PDF 2.0) An object that specifies the arguments to the command. The object may either be a single typed value or an array of typed values, each an argument. Valid arguments are objects of type text string, integer, number, or boolean.
Default value: no arguments.

=end pod
