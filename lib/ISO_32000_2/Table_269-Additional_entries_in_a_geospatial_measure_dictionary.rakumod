use v6;
role ISO_32000_2::Table_269-Additional_entries_in_a_geospatial_measure_dictionary {
    method Bounds {...};
    method GCS {...};
    method DCS {...};
    method PDU {...};
    method GPTS {...};
    method LPTS {...};
    method PCSM {...};
}

=begin pod

=head1 Description

Table 269 — Additional entries in a geospatial measure dictionary

=head1 Methods (Entries)

=head2 Bounds [array]
- (Optional; PDF 2.0) An array of numbers that is taken pairwise to define a series of points that describes the bounds of an area for which geospatial transformations are valid.
For maps, this bounding polygon is known as a neatline. These numbers are expressed relative to a unit square that describes the BBox associated with a Viewport or form XObject, or the bounds of an image XObject. If not present, the default values defines a rectangle describing the full unit square, with values of [0.0 0.0 0.0 1.0 1.0 1.0 1.0 0.0].
NOTE 1 The polygon description need not be explicitly closed by repeating the first point values as a final point.

=head2 GCS [dictionary]
- (Required; PDF 2.0) A geographic or projected coordinate system dictionary. See "Table 270 — Entries in a geographic coordinate system dictionary" and "Table 271 — Entries in a projected coordinate system dictionary".

=head2 DCS [dictionary]
- (Optional; PDF 2.0) A projected or geographic coordinate system that is used for the display of position values, such as latitude and longitude. See "Table 270 — Entries in a geographic coordinate system dictionary" and "Table 271 — Entries in a projected coordinate system dictionary". Formatting the displayed representation of these values is controlled by the interactive PDF processor.

=head2 PDU [array]
- (Optional; PDF 2.0) Preferred Display Units. An array of three names that identify in order a linear display unit, an area display unit, and an angular display unit.
The following are valid linear display units:
M a metre
KM a kilometre
FT an international foot
USFT a U.S. Survey foot
MI an international mile
NM an international nautical mile
The following are valid area display units:
SQM a square metre
HA a hectare (10,000 square metres)
SQKM a square kilometre
SQFT a square foot (US Survey)
A an acre
SQMI a square mile (international)
The following are valid angular display units:
DEG a degree
GRD a grad (1/400 of a circle, or 0.9 degrees)

=head2 GPTS [array]
- (Required; PDF 2.0) An array of numbers that is taken pairwise, defining points in geographic space as degrees of latitude and longitude, respectively when defining a geographic coordinate system. These values is based on the geographic coordinate system described in the GCS dictionary. When defining a projected coordinate system, this array contains values in a planar projected coordinate space as eastings and northings. For Geospatial3D, when Geospatial feature information is present (requirement type Geospatial3D) in a 3D annotation, the GPTS array is required to hold 3D point coordinates as triples rather than pairwise where the third value of each tripe is an elevation value.
NOTE 2 Any projected coordinate system includes an underlying geographic coordinate system.

=head2 LPTS [array]
- (Optional; PDF 2.0) An array of numbers that is taken pairwise to define points in a 2D unit square. The unit square is mapped to the rectangular bounds of the Viewport, image XObject, or forms XObject that contains the measure dictionary. This array contains the same number of number pairs as the GPTS array; each number pair is the unit square object position corresponding to the geospatial position in the GPTS array. For Geospatial3D, when Geospatial feature information is present in a 3D annotation (requirement type Geospatial3D), the LPTS array is required to hold 3D point coordinates as triples corresponding to the GPTS array in the 3D annotation view world coordinate space.

=head2 PCSM [array]
- (Optional; PDF 2.0) A 12-element transformation matrix of real numbers, defining the transformation from XObject position coordinates to projected coordinate system. If GCS is a geographic coordinate system dictionary then PCSM is ignored and GTPS used instead. If PCSM is present, it has priority over GPTS, and GPTS values may be ignored. This priority provides backward compatibility.
NOTE 3 PCSM is an acronym for "Projected Coordinate System Matrix".

=end pod
