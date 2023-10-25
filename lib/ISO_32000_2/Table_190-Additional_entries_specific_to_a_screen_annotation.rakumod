use v6;
role ISO_32000_2::Table_190-Additional_entries_specific_to_a_screen_annotation {
    method Subtype {...};
    method T {...};
    method MK {...};
    method A {...};
    method AA {...};
}

=begin pod

=head1 Description

Table 190 — Additional entries specific to a screen annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Screen for a screen annotation.

=head2 T [text string]
- (Optional) The title of the screen annotation.

=head2 MK [dictionary]
- (Optional) An appearance characteristics dictionary (see "Table 192 — Entries in an appearance characteristics dictionary"). The I entry of this dictionary provides the icon used in generating the appearance referred to by the screen annotation’s AP entry.

=head2 A [dictionary]
- (Optional; PDF 1.1) An action that is performed when the annotation is activated (see 12.6, "Actions").

=head2 AA [dictionary]
- (Optional; PDF 1.2) An additional-actions dictionary defining the screen annotation’s behaviour in response to various trigger events (see 12.6.3, "Trigger events").

=end pod
