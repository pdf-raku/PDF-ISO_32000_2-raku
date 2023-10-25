use v6;
role ISO_32000_2::Table_309-Additional_entries_specific_to_a_ThreeD_annotation {
    method Subtype {...};
    method GEO {...};
    INIT {
        for "3DD", "3DV", "3DA", "3DI", "3DB", "3DU" {
            my &m = method {...};
            &m.set_name($_);
            $?ROLE.^add_method($_, &m);
        }
    }
}

=begin pod

=head1 Description

Table 309 — Additional entries specific to a 3D annotation

=head1 Methods (Entries)

=head2 Subtype [name]
- (Required) The type of annotation that this dictionary describes; is 3D for a 3D annotation.

=head2 3DD [stream or dictionary]
- (Required) A 3D stream (see 13.6.3, "3D streams") or 3D reference dictionary (see 13.6.3.3, "3D reference dictionaries") that specifies the 3D artwork to be shown.

=head2 3DV [(various)]
- (Optional) An object that specifies the default initial view of the 3D artwork that is used when the annotation is activated. It may be either a 3D view dictionary (see 13.6.4, "3D views") or one of the following types specifying an element in the VA array in the 3D stream (see "Table 311 — Entries in a 3D stream dictionary"):
Default value: the default view in the 3D stream object specified by 3DD.

=head2 3DA [dictionary]
- (Optional) An activation dictionary (see "Table 310 — Entries in a 3D activation dictionary") that defines the times at which the annotation is activated and deactivated and the state of the 3D artwork instance at those times. Default value: an activation dictionary containing default values for all its entries.

=head2 3DI [boolean]
- (Optional) A flag indicating the primary use of the 3D annotation. If true, it is intended to be interactive; if false, it is intended to be manipulated programmatically, as with an ECMAScript animation. Interactive PDF processors may present different user interface controls for interactive 3D annotations (for example, to rotate, pan, or zoom the artwork) than for those managed by a script or other mechanism.
Default value: true.

=head2 3DB [rectangle]
- (Optional) The 3D view box, which is the rectangular area in which the 3D artwork is drawn. It is within the rectangle specified by the annotation’s Rect entry and is expressed in the annotation’s target coordinate system (see discussion following this Table).
Default value: the annotation’s Rect entry, expressed in the target coordinate system. This value is [-w/2 -h/2 w/2 h/2], where w and h are the width and height, respectively, of Rect.

=head2 3DU [dictionary]
- (Optional; PDF 2.0) A 3D units dictionary that specifies the units definitions for the 3D data associated with this annotation. See "Table 325 — Entries in a 3D units dictionary".

=head2 GEO [dictionary]
- (Optional; PDF 2.0) For Geospatial3D requirement type, a geospatial information section may be present as an attribute within a 3D Annotation. There are further conditions placed on the GPTS and LPTS arrays within the geo-reference coordinate tables to include 3D point values. See 12.10.2, "Geospatial measure dictionary".

=end pod
