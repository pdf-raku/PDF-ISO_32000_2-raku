use v6;
role ISO_32000_2::Table_239-Additional_entries_specific_to_a_submit-form_action {
    method S {...};
    method F {...};
    method Fields {...};
    method Flags {...};
    method CharSet {...};
}

=begin pod

=head1 Description

Table 239 — Additional entries specific to a submit-form action

=head1 Methods (Entries)

=head2 S [name]
- (Required) The type of action that this dictionary describes; is SubmitForm for a submit-form action.

=head2 F [file specification]
- (Required) A URL file specification (see 7.11.5, "URL specifications") giving the uniform resource locator (URL) of the script at the Web server that will process the submission.

=head2 Fields [array]
- (Optional) An array identifying which fields to include in the submission or which to exclude, depending on the setting of the Include/Exclude flag in the Flags entry (see "Table 240 — Flags for submit-form actions"). Each element of the array is either an indirect reference to a field dictionary or (PDF 1.3) a text string representing the fully qualified name of a field. Elements of both kinds may be mixed in the same array.
If this entry is omitted, the Include/Exclude flag is ignored, and all fields in the document’s interactive form is submitted except those whose NoExport flag (see "Table 227 — Field flags common to all field types") is set. Fields with no values may also excluded, as dictated by the value of the IncludeNoValueFields flag; see "Table 240 — Flags for submit-form actions".

=head2 Flags [integer]
- (Optional; inheritable) A set of flags specifying various characteristics of the action (see "Table 240 — Flags for submit-form actions"). Default value: 0.

=head2 CharSet [string]
- (Optional; inheritable; PDF 2.0) Supported values include: utf-8, utf-16, Shift-JIS, BigFive, GBK, or UHC.

=end pod
