use v6;
role ISO_32000_2::Table_258-Entries_in_the_UR_transform_parameters_dictionary {
    method Type {...};
    method Document {...};
    method Msg {...};
    method V {...};
    method Annots {...};
    method Form {...};
    method Signature {...};
    method EF {...};
    method P {...};
}

=begin pod

=head1 Description

Table 258 — Entries in the UR transform parameters dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is TransformParams for a transform parameters dictionary.

=head2 Document [array]
- (Optional) An array of names specifying additional document-wide usage rights for the document. The only defined value is FullSave, which permits a user to save the document along with modified form and/or annotation data. (PDF 1.5) Any usage right that permits the document to be modified implicitly enables the FullSave right.
If the PDF document contains a UR3 dictionary, only rights specified by the Annots entry that permit the document to be modified shall implicitly enable the FullSave right. For all other rights, FullSave is explicitly enabled in order to save the document. (Signature rights permits saving as part of the signing process but not otherwise).

=head2 Msg [text string]
- (Optional) A text string that may be used to specify any arbitrary information, such as the reason for adding usage rights to the document.

=head2 V [name]
- (Optional) The UR transform parameters dictionary version. The value is 2.2. If an unknown version is present, no rights is enabled.
NOTE This value is a name object, not a number.
Default value: 2.2.

=head2 Annots [array]
- (Optional) An array of names specifying additional annotation-related usage rights for the document. Valid names (PDF 1.5) are Create, Delete, Modify, Copy, Import, and Export, which permits the user to perform the named operation on annotations.
The following names (PDF 1.6) are also permitted (see "Table 263 — Entries in a permissions dictionary"):
Online Permits online commenting; that is, the ability to upload or download markup annotations from a server.
SummaryView Permits a user interface to be shown that summarises the comments (markup annotations) in a document.

=head2 Form [array]
- (Optional) An array of names specifying additional form-field-related usage rights for the document. Valid names (PDF 1.5) are:
Add Permits the user to add form fields to the document.
Delete Permits the user to delete form fields to the document.
FillIn Permits the user to save a document on which form fill-in has been done.
Import Permits the user to import form data files in FDF, XFDF and text (CSV/TSV) formats.
Export Permits the user to export form data files as FDF or XFDF.
SubmitStandalone Permits the user to submit form data when the document is not open in a Web browser.
SpawnTemplate Permits new pages to be instantiated from named page templates.
The following names (PDF 1.6) are also valid:
BarcodePlaintext Permits text form field data to be encoded as a plaintext two-dimensional barcode.
Online Permits the use of forms-specific online mechanisms such as SOAP or Active Data Object.

=head2 Signature [array]
- (Optional) An array of names specifying additional signature-related usage rights for the document. The only defined value is Modify, which permits a user to apply a digital signature to an existing signature form field or clear a signed signature form field.

=head2 EF [array]
- (Optional; PDF 1.6) An array of names specifying additional usage rights for named embedded files in the document. Valid names is Create, Delete, Modify, and Import, which permits the user to perform the named operation on named embedded files.

=head2 P [boolean]
- (Optional; PDF 1.6) If false, any possible restriction may be ignored. Default value: false.

=end pod
