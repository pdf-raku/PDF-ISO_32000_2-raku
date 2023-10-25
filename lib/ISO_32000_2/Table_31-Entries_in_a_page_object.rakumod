use v6;
role ISO_32000_2::Table_31-Entries_in_a_page_object {
    method Type {...};
    method Parent {...};
    method LastModified {...};
    method Resources {...};
    method MediaBox {...};
    method CropBox {...};
    method BleedBox {...};
    method TrimBox {...};
    method ArtBox {...};
    method BoxColorInfo {...};
    method Contents {...};
    method Rotate {...};
    method Group {...};
    method Thumb {...};
    method B {...};
    method Dur {...};
    method Trans {...};
    method Annots {...};
    method AA {...};
    method Metadata {...};
    method PieceInfo {...};
    method StructParents {...};
    method ID {...};
    method PZ {...};
    method SeparationInfo {...};
    method Tabs {...};
    method TemplateInstantiated {...};
    method PresSteps {...};
    method UserUnit {...};
    method VP {...};
    method AF {...};
    method OutputIntents {...};
    method DPart {...};
}

=begin pod

=head1 Description

Table 31 — Entries in a page object

=head1 Methods (Entries)

=head2 Type [name]
- (Required) The type of PDF object that this dictionary describes; is Page for a page object or Template for an invisible Template page (see 12.7.7, "Named pages").

=head2 Parent [dictionary]
- (Required; is an indirect reference) The page tree node that is the immediate parent of this page object. Objects of Type Template has no Parent key.

=head2 LastModified [date]
- (Required if PieceInfo is present; optional otherwise; PDF 1.3) The date and time (see 7.9.4, "Dates") when the page’s contents were most recently modified. If a page-piece dictionary (PieceInfo) is present, the modification date is used to ascertain which of the application data dictionaries that it contains correspond to the current content of the page (see 14.5, "Page-piece dictionaries").

=head2 Resources [dictionary]
- (Required; inheritable) A dictionary containing any resources required by the page contents (see 7.8.3, "Resource dictionaries"). If the page requires no resources, the value of this entry is an empty dictionary. Omitting the entry entirely indicates that the resources is inherited from an ancestor node in the page tree, but PDF writers does not use this method of sharing resources as described in 7.8.3, "Resource dictionaries".

=head2 MediaBox [rectangle]
- (Required; inheritable) A rectangle (see 7.9.5, "Rectangles"), expressed in default user space units, that defines the boundaries of the physical medium on which the page is displayed or printed (see 14.11.2, "Page boundaries").

=head2 CropBox [rectangle]
- (Optional; Inheritable) A rectangle, expressed in default user space units, that defines the visible region of default user space. When the page is displayed or printed, its contents is clipped (cropped) to this rectangle (see 14.11.2, "Page boundaries"). Default value: the value of MediaBox.
NOTE 1 This clipped page output will often be placed (imposed) on the output medium in some implementation-defined manner.

=head2 BleedBox [rectangle]
- (Optional; PDF 1.3) A rectangle, expressed in default user space units, that defines the region to which the contents of the page is clipped when output in a production environment (see 14.11.2, "Page boundaries"). Default value: the value of CropBox.

=head2 TrimBox [rectangle]
- (Optional; PDF 1.3) A rectangle, expressed in default user space units, that defines the intended dimensions of the finished page after trimming (see 14.11.2, "Page boundaries"). Default value: the value of CropBox.

=head2 ArtBox [rectangle]
- (Optional; PDF 1.3) A rectangle, expressed in default user space units, that defines the extent of the page’s meaningful content (including potential white-space) as intended by the page’s creator (see 14.11.2, "Page boundaries"). Default value: the value of CropBox.

=head2 BoxColorInfo [dictionary]
- (Optional; PDF 1.4) A box colour information dictionary that specifies the colours and other visual characteristics that is used in displaying guidelines on the screen for the various page boundaries (see 14.11.2.2, "Display of page boundaries"). If this entry is absent, the application uses its own current default settings.

=head2 Contents [stream or array]
- (Optional) A content stream (see 7.8.2, "Content streams") that describes the contents of this page. If this entry is absent, the page is empty.
The value is either a single stream or an array of streams. If the value is an array, the effect is as if all of the streams in the array were concatenated with at least one white-space character added between the streams’ data, in order, to form a single stream. PDF writers can create image objects and other resources as they occur, even though they interrupt the content stream. The division between streams may occur only at the boundaries between lexical tokens (see 7.2, "Lexical conventions") but is unrelated to the page’s logical content or organisation. Applications that consume or produce PDF files need not preserve the existing structure of the Contents array. PDF writers does not create a Contents array containing no elements.

=head2 Rotate [integer]
- (Optional; inheritable) The number of degrees by which the page is rotated clockwise when displayed or printed. The value is a multiple of 90. Default value: 0.

=head2 Group [dictionary]
- (Optional; PDF 1.4) A group attributes dictionary that specifies the attributes of the page’s page group for use in the transparent imaging model (see 11.4.7, "Page group" and 11.6.6, "Transparency group XObjects").

=head2 Thumb [stream]
- (Optional) A stream object that defines the page’s thumbnail image (see 12.3.4, "Thumbnail images").

=head2 B [array]
- (Optional; PDF 1.1; recommended if the page contains article beads) An array that contains indirect references to all article beads appearing on the page (see 12.4.3, "Articles"). The beads is listed in the array in natural reading order. Objects of Type Template has no B key.
NOTE 2 The information in this entry can be created or recreated from the information obtained from the Threads key in the catalog dictionary.

=head2 Dur [number]
- (Optional; PDF 1.1) The page’s display duration (also called its advance timing): the maximum length of time, in seconds, that the page is displayed during presentations before the viewer application shall automatically advance to the next page (see 12.4.4, "Presentations"). By default, the viewer does not advance automatically.

=head2 Trans [dictionary]
- (Optional; PDF 1.1) A transition dictionary describing the transition effect that is used when displaying the page during presentations (see 12.4.4, "Presentations").

=head2 Annots [array]
- (Optional) An array of annotation dictionaries that contains indirect references to all annotations associated with the page (see 12.5, "Annotations").

=head2 AA [dictionary]
- (Optional; PDF 1.2) An additional-actions dictionary that defines actions to be performed when the page is opened or closed (see 12.6.3, "Trigger events"). (PDF 1.3) additional-actions dictionaries are not inheritable.

=head2 Metadata [stream]
- (Optional; PDF 1.4) A metadata stream that contains metadata for the page (see 14.3.2, "Metadata streams").

=head2 PieceInfo [dictionary]
- (Optional; PDF 1.3) A page-piece dictionary associated with the page (see 14.5, "Page-piece dictionaries").

=head2 StructParents [integer]
- (Required if the page contains structural content items; PDF 1.3) The integer key of the page’s entry in the structural parent tree (see 14.7.5.4, "Finding structure elements from content items").

=head2 ID [byte string]
- (Optional; PDF 1.3; indirect reference preferred) The digital identifier of the page’s parent Web Capture content set (see 14.10.6, "Object attributes related to web capture").

=head2 PZ [number]
- (Optional; PDF 1.3) The page’s preferred zoom (magnification) factor: the factor by which it is scaled to achieve the natural display magnification (see 14.10.6, "Object attributes related to web capture").

=head2 SeparationInfo [dictionary]
- (Optional; PDF 1.3) A separation dictionary that contains information needed to generate colour separations for the page (see 14.11.4, "Separation dictionaries").

=head2 Tabs [name]
- (Optional; PDF 1.5) A name specifying the tab order that is used for annotations on the page (see 12.5 "Annotations"). If present, the values is one of R (row order), C (column order), and S (structure order). Beginning with PDF 2.0, additional values also include A (annotations array order) and W (widget order). Annotations array order refers to the order of the annotation enumerated in the Annots entry of the Page dictionary (see "Table 31 — Entries in a page object"). Widget order means using the same array ordering but making two passes, the first only picking the widget annotations and the second picking all other annotations.

=head2 TemplateInstantiated [name]
- (Required if this page was created from a named page object; PDF 1.5) The name of the originating page object (see 12.7.7, "Named pages").

=head2 PresSteps [dictionary]
- (Optional; PDF 1.5) A navigation node dictionary that represents the first node on the page (see 12.4.4.2, "Sub-page navigation").

=head2 UserUnit [number]
- (Optional; PDF 1.6) A positive number that shall give the size of default user space units, in multiples of 1 ⁄ 72 inch. The range of supported values is implementation-dependent.
Default value: 1.0 (user space unit is 1 ⁄ 72 inch).

=head2 VP [array]
- (Optional; PDF 1.6) An array of viewport dictionaries (see "Table 265 — Entries in a viewport dictionary") that specifies rectangular regions of the page.

=head2 AF [array of dictionaries]
- (Optional; PDF 2.0) An array of one or more file specification dictionaries (7.11.3, "File specification dictionaries") which denote the associated files for this page. See 14.13, "Associated files" and 14.13.8, "Associated files linked to DParts" for more details.

=head2 OutputIntents [array]
- (Optional; PDF 2.0) An array of output intent dictionaries that specifies the colour characteristics of output devices on which this page might be rendered (see 14.11.5, "Output intents").

=head2 DPart [dictionary]
- (Required, if this page is within the range of a DPart, not permitted otherwise; PDF 2.0) An indirect reference to the DPart dictionary whose range of pages includes this page object (see 14.12.3, "Connecting the DPart tree structure to pages").
NOTE 3 The DPart key in a page object allows a PDF processor to directly retrieve the section of the document part hierarchy that applies to this page object. This also allows for ready access of DPM data in PDF processors.

=end pod
