use v6;
role ISO_32000_2::Table_172-Additional_entries_in_an_annotation_dictionary_specific_to_markup_annotations {
    method T {...};
    method Popup {...};
    method RC {...};
    method CreationDate {...};
    method IRT {...};
    method Subj {...};
    method RT {...};
    method IT {...};
}

=begin pod

=head1 Description

Table 172 — Additional entries in an annotation dictionary specific to markup annotations

=head1 Methods (Entries)

=head2 T [text string]
- (Optional; PDF 1.1) The text label that is displayed in the title bar of the annotation’s popup window when open and active. This entry identifies the user who added the annotation.

=head2 Popup [dictionary]
- (Optional; PDF 1.3) An indirect reference to a popup annotation for entering or editing the text associated with this annotation.

=head2 RC [text string or text stream]
- (Optional; PDF 1.5) A rich text string (see Adobe XML Architecture, XML Forms Architecture (XFA) Specification, version 3.3) that is displayed in the popup window when the annotation is opened.

=head2 CreationDate [date]
- (Optional; PDF 1.5) The date and time (7.9.4, "Dates") when the annotation was created.

=head2 IRT [dictionary]
- (Required if an RT entry is present, otherwise optional; PDF 1.5) A reference to the annotation that this annotation is "in reply to." Both annotations is on the same page of the document. The relationship between the two annotations is specified by the RT entry.
If this entry is present in an FDF file (see 12.7.8, "Forms data format"), its type is not a dictionary but a text string containing the contents of the NM entry of the annotation being replied to, to allow for a situation where the annotation being replied to is not in the same FDF file.

=head2 Subj [text string]
- (Optional; PDF 1.5) Text representing a short description of the subject being addressed by the annotation.

=head2 RT [name]
- (Optional; meaningful only if IRT is present; PDF 1.6) A name specifying the relationship (the "reply type") between this annotation and one specified by IRT. Valid values are:
R The annotation is considered a reply to the annotation specified by IRT. Interactive PDF processors does not display replies to an annotation individually but together in the form of threaded comments.
Group The annotation is grouped with the annotation specified by IRT; see the discussion following this Table.
Default value: R.

=head2 IT [name]
- (Optional; PDF 1.6) A name describing the intent of the markup annotation. Intents allow interactive PDF processors to distinguish between different uses and behaviours of a single markup annotation type. If this entry is not present or its value is the same as the annotation type, the annotation has no explicit intent and behaves in a generic manner in an interactive PDF processor.
Free text annotations ("Table 177 — Additional entries specific to a free text annotation"), line annotations ("Table 178 — Additional entries specific to a line annotation"), polygon annotations ("Table 181 — Additional entries specific to a polygon or polyline annotation"), (PDF 1.7) polyline annotations ("Table 181 — Additional entries specific to a polygon or polyline annotation") and stamp annotations (“Table 184 — Additional entries specific to a rubber stamp annotation") have defined intents, whose values are enumerated in the corresponding tables.

=end pod
