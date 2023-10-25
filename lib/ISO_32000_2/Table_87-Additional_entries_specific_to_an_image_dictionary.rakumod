use v6;
role ISO_32000_2::Table_87-Additional_entries_specific_to_an_image_dictionary {
    method Type {...};
    method Subtype {...};
    method Width {...};
    method Height {...};
    method ColorSpace {...};
    method BitsPerComponent {...};
    method Intent {...};
    method ImageMask {...};
    method Mask {...};
    method Decode {...};
    method Interpolate {...};
    method Alternates {...};
    method SMask {...};
    method SMaskInData {...};
    method Name {...};
    method StructParent {...};
    method ID {...};
    method OPI {...};
    method Metadata {...};
    method OC {...};
    method AF {...};
    method Measure {...};
    method PtData {...};
}

=begin pod

=head1 Description

Table 87 — Additional entries specific to an image dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is XObject for an image XObject.

=head2 Subtype [name]
- (Optional when used only as a thumbnail image, required otherwise) The type of XObject that this dictionary describes; is Image for an image XObject.
NOTE The conditions for when the Subtype key is required were clarified in this document (2020).

=head2 Width [integer]
- (Required) The width of the image, in samples.

=head2 Height [integer]
- (Required) The height of the image, in samples.

=head2 ColorSpace [name or array]
- (Required for images, except those that use the JPXDecode filter; not permitted for image masks) The colour space in which image samples is specified; it can be any type of colour space except Pattern.
If the image uses the JPXDecode filter, this entry may be present:

=head2 BitsPerComponent [integer]
- (Required except for image masks and images that use the JPXDecode filter) The number of bits used to represent each colour component. Only a single value is specified; the number of bits is the same for all colour components. The value is 1, 2, 4, 8, or (from PDF 1.5) 16. If ImageMask is true, this entry is optional, but if specified, its value is 1.
If the image stream uses a filter, the value of BitsPerComponent is consistent with the size of the data samples that the filter delivers. In particular, a CCITTFaxDecode or JBIG2Decode filter always deliver 1-bit samples, a RunLengthDecode or DCTDecode filter always deliver 8-bit samples, and an LZWDecode or FlateDecode filter delivers samples of a specified size if a predictor function is used.
If the image stream uses the JPXDecode filter, this entry is optional and is ignored if present. The bit depth is determined by the PDF processor in the process of decoding the JPEG 2000 image.

=head2 Intent [name]
- (Optional; PDF 1.1) The name of a colour rendering intent that is used in rendering any image that is not an image mask (see 8.6.5.8, "Rendering intents"). This value is ignored if ImageMask is true. Default value: the current rendering intent in the graphics state.

=head2 ImageMask [boolean]
- (Optional) A flag indicating whether the image is treated as an image mask (see 8.9.6, "Masked images"). If this flag is true, the value of BitsPerComponent, if present, is 1 and Mask and ColorSpace is not specified; unmasked areas is painted using the current nonstroking colour. Default value: false.

=head2 Mask [stream or array]
- (Optional; is not present for image masks; PDF 1.3) An image XObject defining an image mask to be applied to this image (see 8.9.6.3, "Explicit masking"), or an array specifying a range of colours to be applied to it as a colour key mask (see 8.9.6.4, "Colour key masking"). If ImageMask is true, this entry is not present.

=head2 Decode [array]
- (Optional) An array of numbers describing how to map image samples into the range of values appropriate for the image’s colour space (see 8.9.5.2, "Decode arrays"). If ImageMask is true, the array is either [0 1] or [1 0]; otherwise, its length is twice the number of colour components required by ColorSpace. If the image uses the JPXDecode filter and if ColorSpace is absent, the Decode array is ignored unless ImageMask is true.
Default value: see "Table 88 — Default decode arrays".

=head2 Interpolate [boolean]
- (Optional) A flag indicating whether image interpolation is performed by a PDF processor (see 8.9.5.3, "Image interpolation"). Default value: false.

=head2 Alternates [array]
- (Optional; PDF 1.3) An array of alternate image dictionaries for this image (see 8.9.5.4, "Alternate images"). This entry is not present in an image XObject that is itself an alternate image.

=head2 SMask [stream]
- (Optional; PDF 1.4) A subsidiary image XObject defining a soft-mask image (see 11.6.5.2, "Soft-mask images") that is used as a source of mask shape or mask opacity values in the transparent imaging model. The alpha source parameter in the graphics state determines whether the mask values is interpreted as shape or opacity.
If present, this entry overrides the current soft mask in the graphics state, as well as the image’s Mask entry, if any. However, the other transparency-related graphics state parameters — blend mode and alpha constant — remains in effect. If SMask is absent and SMaskInData has value 0, the image has no associated soft mask (although the current soft mask in the graphics state may still apply).
NOTE 1 Interactions between SMask, SMaskInData and the current soft mask in the graphics state are set out in clause 11.6.4.3, "Mask shape and opacity".

=head2 SMaskInData [integer]
- (Optional for images that use the JPXDecode filter, meaningless otherwise; PDF 1.5) A code specifying how soft-mask information (see 11.6.5.2, "Soft-mask images") encoded with image samples is used:
0 If present, encoded soft-mask image information is ignored.
1 The image’s data stream includes encoded soft-mask values. A PDF processor shall create a soft-mask image from the information to be used as a source of mask shape or mask opacity in the transparency imaging model.
2 The image’s data stream includes colour channels that have been premultiplied with an opacity channel; the image data also includes the opacity channel. A PDF processor shall create a soft-mask image from the opacity channel information to be used as a source of mask shape or mask opacity in the transparency model.
If this entry has a non-zero value, SMask is not specified. See also 7.4.9, "JPXDecode filter".
NOTE 2 Interactions between SMask, SMaskInData and the current soft mask in the graphics state are set out in clause 11.6.4.3, "Mask shape and opacity".
Default value: 0.

=head2 Name [name]
- (Required in PDF 1.0; optional otherwise; deprecated in PDF 2.0) The name by which this image XObject is referenced in the XObject subdictionary of the current resource dictionary (see 7.8.3, "Resource dictionaries").

=head2 StructParent [integer]
- (Required if the image is a structural content item; PDF 1.3) The integer key of the image’s entry in the structural parent tree (see 14.7.5.4, "Finding structure elements from content items").

=head2 ID [byte string]
- (Optional; PDF 1.3; indirect reference preferred) The digital identifier of the image’s parent Web Capture content set (see 14.10.6, "Object attributes related to web capture").

=head2 OPI [dictionary]
- (Optional; PDF 1.2; deprecated in PDF 2.0) An OPI version dictionary for the image; see 14.11.7, "Open prepress interface (OPI)". If ImageMask is true, this entry is ignored.

=head2 Metadata [stream]
- (Optional; PDF 1.4) A metadata stream containing metadata for the image (see 14.3.2, "Metadata streams").

=head2 OC [dictionary]
- (Optional; PDF 1.5) An optional content group or optional content membership dictionary (see 8.11, "Optional content"), specifying the optional content properties for this image XObject. Before the image is processed by a PDF processor, its visibility is determined based on this entry. If it is determined to be invisible, the entire image is skipped, as if there were no Do operator to invoke it.

=head2 AF [array of dictionaries]
- (Optional; PDF 2.0) An array of one or more file specification dictionaries (7.11.3, "File specification dictionaries") which denote the associated files for this image XObject. See 14.13, "Associated files" and 14.13.7, "Associated files linked to XObjects" for more details.

=head2 Measure [dictionary]
- (Optional; PDF 2.0) A measure dictionary (see "Table 266 — Entries in a measure dictionary") that specifies the scale and units which applies to the image.

=head2 PtData [dictionary]
- (Optional; PDF 2.0) A point data dictionary (see "Table 272 — Entries in a point data dictionary") that specifies the extended geospatial data that applies to the image.

=end pod
