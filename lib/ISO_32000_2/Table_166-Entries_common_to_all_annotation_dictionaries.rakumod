use v6;
role ISO_32000_2::Table_166-Entries_common_to_all_annotation_dictionaries {
    method Type {...};
    method Subtype {...};
    method Rect {...};
    method Contents {...};
    method P {...};
    method NM {...};
    method M {...};
    method F {...};
    method AP {...};
    method AS {...};
    method Border {...};
    method C {...};
    method StructParent {...};
    method OC {...};
    method AF {...};
    method ca {...};
    method CA {...};
    method BM {...};
    method Lang {...};
}

=begin pod

=head1 Description

Table 166 — Entries common to all annotation dictionaries

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is Annot for an annotation dictionary.

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; see "Table 171 — Annotation types" for specific values.

=head2 Rect [rectangle]
- (Required) The annotation rectangle, defining the location of the annotation on the page in default user space units.

=head2 Contents [text string]
- (Optional) Text that is displayed for the annotation or, if this type of annotation does not display text, an alternative description of the annotation’s contents in human-readable form. In either case, this text is useful when extracting the document’s contents in support of accessibility to users with disabilities or for other purposes (see 14.9.3, "Alternate descriptions"). See 12.5.6, "Annotation types" for more details on the meaning of this entry for each annotation type.

=head2 P [dictionary]
- (Optional except as noted below; PDF 1.3; not used in FDF files) An indirect reference to the page object with which this annotation is associated.
This entry is present in screen annotations associated with rendition actions (PDF 1.5; see 12.5.6.18, "Screen annotations" and 12.6.4.14, "Rendition actions").

=head2 NM [text string]
- (Optional; PDF 1.4) The annotation name, a text string uniquely identifying it among all the annotations on its page.

=head2 M [date or text string]
- (Optional; PDF 1.1) The date and time when the annotation was most recently modified. The format is a date string as described in 7.9.4, "Dates" but interactive PDF processors accepts and display a string in any format.

=head2 F [integer]
- (Optional; PDF 1.1) A set of flags specifying various characteristics of the annotation (see 12.5.3, "Annotation flags"). Default value: 0.

=head2 AP [dictionary]
- (Optional; PDF 1.2) An appearance dictionary specifying how the annotation is presented visually on the page (see 12.5.5, "Appearance streams"). A PDF writer includes an appearance dictionary when writing or updating the PDF file except for the two cases listed below.
Every annotation (including those whose Subtype value is Widget, as used for form fields), except for the two cases listed below, has at least one appearance dictionary.
NOTE (2020) The bullet point above was changed from “or” to “and” in this document to match requirements in other published ISO PDF standards (such as PDF/A).

=head2 AS [name]
- (Required if the appearance dictionary AP contains one or more subdictionaries; PDF 1.2) The annotation’s appearance state, which selects the applicable appearance stream from an appearance subdictionary (see 12.5.5, "Appearance streams").

=head2 Border [array]
- (Optional) An array specifying the characteristics of the annotation’s border, which is drawn as a rounded rectangle.
(PDF 1.0) The array consists of three numbers defining the horizontal corner radius, vertical corner radius, and border width, all in default user space units. If the corner radii are 0, the border has square (not rounded) corners; if the border width is 0, no border is drawn.
(PDF 1.1) The array may have a fourth element, an optional dash array defining a pattern of dashes and gaps that is used in drawing the border. The dash array is specified in the same format as in the line dash pattern parameter of the graphics state (see 8.4.3.6, "Line dash pattern"). The dash phase is not specified and is assumed to be 0.
EXAMPLE A Border value of [0 0 1 [3 2]] specifies a border 1 unit wide, with square corners, drawn with 3-unit dashes alternating with 2- unit gaps.
NOTE (PDF 1.2) The dictionaries for some annotation types (such as free text and polygon annotations) can include the BS entry. That entry specifies a border style dictionary that has more settings than the array specified for the Border entry. If an annotation dictionary includes the BS entry, then the Border entry is ignored.
Default value: [0 0 1].

=head2 C [array]
- (Optional; PDF 1.1) An array of numbers in the range 0.0 to 1.0, representing a colour used for the following purposes:
The background of the annotation’s icon when closed
The title bar of the annotation’s popup window
The border of a link annotation
The number of array elements determines the colour space in which the colour is defined:
0 No colour; transparent
1 DeviceGray
3 DeviceRGB
4 DeviceCMYK

=head2 StructParent [integer]
- (Required if the annotation is a structural content item; PDF 1.3) The integer key of the annotation’s entry in the structural parent tree (see 14.7.5.4, "Finding structure elements from content items").

=head2 OC [dictionary]
- (Optional; PDF 1.5) An optional content group or optional content membership dictionary (see 8.11, "Optional content") specifying the optional content properties for the annotation. Before the annotation is drawn, its visibility is determined based on this entry as well as the annotation flags specified in the F entry (see 12.5.3, "Annotation flags"). If it is determined to be invisible, the annotation is not drawn. (See 8.11.3.3, "Optional content in XObjects and annotations".)

=head2 AF [array of dictionaries]
- (Optional; PDF 2.0) An array of one or more file specification dictionaries (7.11.3, "File specification dictionaries") which denote the associated files for this annotation). See 14.13, "Associated files" and 14.13.9, "Associated files linked to an annotation dictionary" for more details.

=head2 ca [number]
- (Optional; PDF 2.0) When regenerating the annotation's appearance stream, this is the opacity value (11.2, "Overview of transparency") that is used for all nonstroking operations on all visible elements of the annotation in its closed state (including its background and border) but not the popup window that appears when the annotation is opened.
Default value: 1.0
The specified value is not used if the annotation has an appearance stream (see 12.5.5, "Appearance streams"); in that case, the appearance stream specifies any transparency.
If no explicit appearance stream is defined for the annotation, and the processor is not able to regenerate the appearance, the annotation may be painted by implementation-dependent means that do not necessarily conform to the PDF imaging model; in this case, the effect of this entry is implementation-dependent as well.

=head2 CA [number]
- (Optional; PDF 1.4, PDF 2.0 for non-markup annotations) When regenerating the annotation's appearance stream, this is the opacity value (11.2, "Overview of transparency") that is used for stroking all visible elements of the annotation in its closed state, including its background and border, but not the popup window that appears when the annotation is opened.
If a ca entry is not present in this dictionary, then the value of this CA entry is also used for nonstroking operations as well. Default Value: 1.0
The specified value is not used if the annotation has an appearance stream (12.5.5, "Appearance streams"); in that case, the appearance stream specifies any transparency.
If no explicit appearance stream is defined for the annotation, and the processor is not able to regenerate the appearance, the annotation may be painted by implementation-dependent means that do not necessarily conform to the PDF imaging model; in this case, the effect of this entry is implementation-dependent as well.

=head2 BM [name]
- (Optional; PDF 2.0) The blend mode that is used when painting the annotation onto the page (see 11.3.5, "Blend Mode" and 11.6.3, "Specifying Blending Colour Space and Blend Mode"). If this key is not present, blending takes place using the Normal blend mode. The value is a name object, designating one of the standard blend modes listed in "Table 134 — Standard separable blend modes" and "Table 135 — Standard non-separable blend modes" in 11.3.5, "Blend mode".

=head2 Lang [text string]
- (Optional; PDF 2.0) A language identifier overriding the document’s language identifier to specify the natural language for all text in the annotation except where overridden by other explicit language specifications (see 14.9.2, "Natural language specification").

=end pod
