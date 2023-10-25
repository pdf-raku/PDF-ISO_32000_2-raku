use v6;
role ISO_32000_2::Table_383-PrintField_attributes {
    method Role {...};
    method Desc {...};
    INIT {
        for "Checked,Checked" {
            my &m = method {...};
            &m.set_name($_);
            $?ROLE.^add_method($_, &m);
        }
    }
}

=begin pod

=head1 Description

Table 383 — PrintField attributes

=head1 Methods (Entries)

=head2 Role [name]
- (Optional; not inheritable; PDF 1.7) The type of form field represented. The value of Role is one of the following:
rb Radio button
cb Check box
pb Push button
tv Text-value field
lb Listbox field
The tv role is used for non-interactive fields with textual values. The text that is the value of the field is the content of the Form structure element (see "Table 368 — General inline level structure types").
NOTE 1 Examples include text edit fields, numeric fields, password fields, digital signature fields and combo box fields.
Semantic groupings of non-interactive form fields and associated content (for example, a set of radio button fields associated with a label) is enclosed within a Part structure element.
Default value: None specified.

=head2 Checked,Checked [name]
- (Optional; not inheritable; PDF 1.7; lower case form is deprecated in PDF 2.0) The state of a radio button or check box field. The value is one of: on, off, or neutral.
NOTE 2 In earlier versions of PDF the case (capitalization) used for this key did not conform to the same conventions used elsewhere in this standard.
Default value: off.

=head2 Desc [text string]
- (Optional; not inheritable; PDF 1.7) The alternate name of the field.
NOTE 3 Similar to the value supplied in the TU entry of the field dictionary for interactive fields (see "Table 226 — Entries common to all field dictionaries").

=end pod
