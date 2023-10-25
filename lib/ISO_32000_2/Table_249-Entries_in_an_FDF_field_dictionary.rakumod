use v6;
role ISO_32000_2::Table_249-Entries_in_an_FDF_field_dictionary {
    method Kids {...};
    method T {...};
    method V {...};
    method Ff {...};
    method SetFf {...};
    method ClrFf {...};
    method F {...};
    method SetF {...};
    method ClrF {...};
    method AP {...};
    method APRef {...};
    method IF {...};
    method Opt {...};
    method A {...};
    method AA {...};
    method RV {...};
}

=begin pod

=head1 Description

Table 249 — Entries in an FDF field dictionary

=head1 Methods (Entries)

=head2 Kids [array]
- (Optional) An array containing the immediate children of this field.
Unlike the children of fields in a PDF file, which is specified as indirect object references, those of an FDF field may be either direct or indirect objects.

=head2 T [text string]
- (Required) The partial field name (see 12.7.4.2, "Field names").

=head2 V [(various)]
- (Optional) The field’s value, whose format varies depending on the field type; see the descriptions of individual field types in 12.7.5, "Field types" for further information.

=head2 Ff [integer]
- (Optional) A set of flags specifying various characteristics of the field (see "Table 227 — Field flags common to all field types", "Table 229 — Field flags specific to button fields", "Table 231 — Field flags specific to text fields", and "Table 233 — Field flags specific to choice fields"). When imported into an interactive form, the value of this entry replaces that of the Ff entry in the form’s corresponding field dictionary. If this field is present, the SetFf and ClrFf entries, if any, is ignored.

=head2 SetFf [integer]
- (Optional) A set of flags to be set (turned on) in the Ff entry of the form’s corresponding field dictionary. Bits equal to 1 in SetFf causes the corresponding bits in Ff to be set to 1. This entry is ignored if an Ff entry is present in the FDF field dictionary.

=head2 ClrFf [integer]
- (Optional) A set of flags to be cleared (turned off) in the Ff entry of the form’s corresponding field dictionary. Bits equal to 1 in ClrFf causes the corresponding bits in Ff to be set to 0. If a SetFf entry is also present in the FDF field dictionary, it is applied before this entry. This entry is ignored if an Ff entry is present in the FDF field dictionary.

=head2 F [integer]
- (Optional) A set of flags specifying various characteristics of the field’s widget annotation (see 12.5.3, "Annotation flags"). When imported into an interactive form, the value of this entry replaces that of the F entry in the form’s corresponding annotation dictionary. If this field is present, the SetF and ClrF entries, if any, is ignored.

=head2 SetF [integer]
- (Optional) A set of flags to be set (turned on) in the F entry of the form’s corresponding widget annotation dictionary. Bits equal to 1 in SetF causes the corresponding bits in F to be set to 1. This entry is ignored if an F entry is present in the FDF field dictionary.

=head2 ClrF [integer]
- (Optional) A set of flags to be cleared (turned off) in the F entry of the form’s corresponding widget annotation dictionary. Bits equal to 1 in ClrF causes the corresponding bits in F to be set to 0. If a SetF entry is also present in the FDF field dictionary, it is applied before this entry. This entry is ignored if an F entry is present in the FDF field dictionary.

=head2 AP [dictionary]
- (Optional) An appearance dictionary specifying the appearance of a push-button field (see 12.7.5.2.2, "Push-buttons"). The appearance dictionary’s contents are as shown in "Table 170 — Entries in an appearance dictionary", except that the values of the N, R, and D entries are streams.

=head2 APRef [dictionary]
- (Optional; PDF 1.3) A dictionary holding references to external PDF files containing the pages to use for the appearances of a push-button field. This dictionary is similar to an appearance dictionary (see "Table 170 — Entries in an appearance dictionary"), except that the values of the N, R, and D entries are named page reference dictionaries ("Table 253 — Entries in an FDF named page reference dictionary"). This entry is ignored if an AP entry is present.

=head2 IF [dictionary]
- (Optional; PDF 1.3; button fields only) An icon fit dictionary (see "Table 250 — Entries in an icon fit dictionary") specifying how to display a button field’s icon within the annotation rectangle of its widget annotation.

=head2 Opt [array]
- (Required; choice fields only) An array of options that is presented to the user. Each element of the array takes one of two forms:
A text string representing one of the available options
A two-element array consisting of a text string representing one of the available options and a default appearance string for constructing the item’s appearance dynamically at viewing time (12.7.4.3, "Variable text").

=head2 A [dictionary]
- (Optional) An action that is performed when this field’s widget annotation is activated (see 12.6, "Actions").

=head2 AA [dictionary]
- (Optional) An additional-actions dictionary defining the field’s behaviour in response to various trigger events (see 12.6.3, "Trigger events").

=head2 RV [text string or text stream]
- (Optional; PDF 1.5) A rich text string, as in Adobe XML Architecture, XML Forms Architecture (XFA) Specification, version 3.3.

=end pod
