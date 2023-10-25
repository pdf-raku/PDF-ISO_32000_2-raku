use v6;
role ISO_32000_2::Table_334-Entries_in_a_RichMediaSettings_dictionary {
    method Type {...};
    method Activation {...};
    method Deactivation {...};
}

=begin pod

=head1 Description

Table 334 — Entries in a RichMediaSettings dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional; PDF 2.0) The type of PDF object that this dictionary describes. If present, is RichMediaSettings.

=head2 Activation [dictionary]
- (Optional; PDF 2.0) A RichMediaActivation dictionary (see "Table 335 — Entries in a RichMediaActivation dictionary") that specifies the style of presentation, default script behavior, default view information, and animation style when the annotation is activated.

=head2 Deactivation [dictionary]
- (Optional; PDF 2.0) A RichMediaDeactivation dictionary (see "Table 336 — Entries in a RichMediaDeactivation dictionary") that specifies the condition and type of unloading (restart or pause) that occurs during deactivation.

=end pod
