use v6;
role ISO_32000_2::Table_191-Additional_entries_specific_to_a_widget_annotation {
    method Subtype {...};
    method H {...};
    method MK {...};
    method A {...};
    method AA {...};
    method BS {...};
    method Parent {...};
}

=begin pod

=head1 Description

Table 191 — Additional entries specific to a widget annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is Widget for a widget annotation.

=head2 H [name]
- (Optional) The annotation’s highlighting mode, the visual effect that is used when the mouse button is pressed or held down inside its active area:
N (None) No highlighting.
I (Invert) Invert the colours used to display the contents of the annotation rectangle.
O (Outline) Stroke the colours used to display the annotation border. That is, for each colour channel in the colour space used for display of the annotation value, colour values is transformed by the function 𝑓 (𝑥) = 1 – 𝑥 for display.
P (Push) Display the annotation’s down appearance, if any (see 12.5.5, "Appearance streams"). If no down appearance is defined, the contents of the annotation rectangle is offset to appear as if it were being pushed below the surface of the page.
T (Toggle) Same as P (which is preferred).
A highlighting mode other than P overrides any down appearance defined for the annotation. Default value: I.

=head2 MK [dictionary]
- (Optional) An appearance characteristics dictionary (see "Table 192 — Entries in an appearance characteristics dictionary") that is used in constructing a dynamic appearance stream specifying the annotation’s visual presentation on the page.
The name MK for this entry is of historical significance only and has no direct meaning.

=head2 A [dictionary]
- (Optional; PDF 1.1) An action that is performed when the annotation is activated (see 12.6, "Actions").

=head2 AA [dictionary]
- (Optional; PDF 1.2) An additional-actions dictionary defining the annotation’s behaviour in response to various trigger events (see 12.6.3, "Trigger events").

=head2 BS [dictionary]
- (Optional; PDF 1.2) A border style dictionary (see "Table 168 — Entries in a border style dictionary") specifying the width and dash pattern that is used in drawing the annotation’s border.

=head2 Parent [dictionary]
- (Required if this widget annotation is one of multiple children in a field; optional otherwise) An indirect reference to the widget annotation’s parent field. A widget annotation may have at most one parent; that is, it can be included in the Kids array of at most one field

=end pod
