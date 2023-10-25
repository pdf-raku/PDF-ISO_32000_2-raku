use v6;
role ISO_32000_2::Table_224-Entries_in_the_interactive_form_dictionary {
    method Fields {...};
    method NeedAppearances {...};
    method SigFlags {...};
    method CO {...};
    method DR {...};
    method DA {...};
    method Q {...};
    method XFA {...};
}

=begin pod

=head1 Description

Table 224 — Entries in the interactive form dictionary

=head1 Methods (Entries)

=head2 Fields [array]
- (Required) An array of references to the document’s root fields (those with no ancestors in the field hierarchy).

=head2 NeedAppearances [boolean]
- (Optional; deprecated in PDF 2.0) A flag specifying whether to construct appearance streams and appearance dictionaries for all widget annotations in the document (see 12.7.4.3, "Variable text"). Default value: false. A PDF writer includes this key, with a value of true, if it has not provided appearance streams for all visible widget annotations present in the document.
NOTE Appearance streams are required in PDF 2.0 and later.

=head2 SigFlags [integer]
- (Optional; PDF 1.3) A set of flags specifying various document-level characteristics related to signature fields (see "Table 225 — Signature flags", and 12.7.5.5, "Signature fields"). Default value: 0.

=head2 CO [array]
- (Required if any fields in the document have additional-actions dictionaries containing a C entry; PDF 1.3) An array of indirect references to field dictionaries with calculation actions, defining the calculation order in which their values will be recalculated when the value of any field changes (see 12.6.3, "Trigger events").

=head2 DR [dictionary]
- (Optional) A resource dictionary (see 7.8.3, "Resource dictionaries") containing default resources (such as fonts, patterns, or colour spaces) that is used by form field appearance streams. At a minimum, this dictionary contains a Font entry specifying the resource name and font dictionary of the default font for displaying text.

=head2 DA [string]
- (Optional) A document-wide default value for the DA attribute of variable text fields (see 12.7.4.3, "Variable text").

=head2 Q [integer]
- (Optional) A document-wide default value for the Q attribute of variable text fields (see 12.7.4.3, "Variable text").

=head2 XFA [stream or array]
- (Optional; deprecated in PDF 2.0) A stream or array containing an XFA resource, whose format conforms to the Data Package (XDP) Specification.
See Annex K, “XFA forms”.

=end pod
