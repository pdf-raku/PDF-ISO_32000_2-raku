use v6;
role ISO_32000_2::Table_336-Entries_in_a_RichMediaDeactivation_dictionary {
    method Type {...};
    method Condition {...};
}

=begin pod

=head1 Description

Table 336 — Entries in a RichMediaDeactivation dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, is RichMediaDeactivation.

=head2 Condition [name]
- (Optional; PDF 2.0) A name specifying the circumstances under which the annotation is deactivated. The following values are valid:
XD the annotation is explicitly deactivated by a user action or script.
PC the annotation is deactivated as soon as the page that contains the annotation loses focus as the current page.
PI the annotation is deactivated as soon as the entire page that contains the annotation is no longer visible.
Default value: XD.

=end pod
