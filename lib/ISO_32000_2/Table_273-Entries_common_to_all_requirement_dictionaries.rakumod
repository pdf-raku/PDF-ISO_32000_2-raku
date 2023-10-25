use v6;
role ISO_32000_2::Table_273-Entries_common_to_all_requirement_dictionaries {
    method Type {...};
    method S {...};
    method V {...};
    method RH {...};
    method Penalty {...};
}

=begin pod

=head1 Description

Table 273 — Entries common to all requirement dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes. If present, is Requirement for a requirement dictionary.

=head2 S [name]
- (Required) The type of requirement that this dictionary describes. See "Table 276 — Entries in a requirement handler dictionary" for valid values.

=head2 V [name or dictionary]
- (Optional; PDF 2.0) The minimum version level of support needed to satisfy the requirement. See 12.11.4, "Requirement versions". If this entry is absent, determining if the requirement is satisfied is done without regard to version number.
Unless otherwise mentioned in the entries in "Table 276 — Entries in a requirement handler dictionary", the value represents the PDF version.

=head2 RH [dictionary or array]
- (Optional) An alternative requirement handler dictionary or an array of such dictionaries. Each dictionary identifies a requirement handler that is disabled (not invoked) if the interactive PDF processor can check the requirement specified in the S entry (whether or not it can satisfy that requirement). See 12.11.5, "Requirement handlers".
Default value: an empty array.

=head2 Penalty [integer]
- (Optional; PDF 2.0) An integer value that is between 0 and 100 (inclusive) that represents the penalty value to be applied when this requirement cannot be met by a PDF processor.
Default value is 100.

=end pod
