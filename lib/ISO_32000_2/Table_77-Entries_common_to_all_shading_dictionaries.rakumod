use v6;
role ISO_32000_2::Table_77-Entries_common_to_all_shading_dictionaries {
    method ShadingType {...};
    method ColorSpace {...};
    method Background {...};
    method BBox {...};
    method AntiAlias {...};
}

=begin pod

=head1 Description

Table 77 — Entries common to all shading dictionaries

=head1 Methods (Entries)

=head2 ShadingType [integer]
- (Required) The shading type:
1 Function-based shading
2 Axial shading
3 Radial shading
4 Free-form Gouraud-shaded triangle mesh
5 Lattice-form Gouraud-shaded triangle mesh
6 Coons patch mesh
7 Tensor-product patch mesh

=head2 ColorSpace [name or array]
- (Required) The colour space in which colour values is expressed. This may be any device, CIE-based, or special colour space except a Pattern space. See 8.7.4.4, "Colour space: special considerations" for further information.

=head2 Background [array]
- (Optional) An array of colour components appropriate to the colour space, specifying a single background colour value. If present, this colour is used, before any painting operation involving the shading, to fill those portions of the area to be painted that lie outside the bounds of the shading object.
NOTE 1 In the opaque imaging model, the effect is as if the painting operation were performed twice: first with the background colour and then with the shading.
The background colour is applied only when the shading is used as part of a shading pattern, not when painted directly with the sh operator.

=head2 BBox [rectangle]
- (Optional) An array of four numbers giving the left, bottom, right, and top coordinates, respectively, of the shading’s bounding box. The coordinates is interpreted in the shading’s target coordinate space. If present, this bounding box is applied as a temporary clipping boundary when the shading is painted, in addition to the current clipping path and any other clipping boundaries in effect at that time.
NOTE 2 A BBox of zero height or width will still paint one pixel (see 10.7.4, "Scan conversion rules").

=head2 AntiAlias [boolean]
- (Optional) A flag indicating whether to filter the shading function to prevent aliasing artifacts.
NOTE 3 The shading operators sample shading functions at a rate determined by the resolution of the output device. Aliasing can occur if the function is not smooth — that is, if it has a high spatial frequency relative to the sampling rate. Anti-aliasing can be computationally expensive and is usually unnecessary, since most shading functions are smooth enough or are sampled at a high enough frequency to avoid aliasing effects.
Default value: false.

=end pod
