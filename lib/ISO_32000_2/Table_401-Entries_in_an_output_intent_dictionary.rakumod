use v6;
role ISO_32000_2::Table_401-Entries_in_an_output_intent_dictionary {
    method Type {...};
    method S {...};
    method OutputCondition {...};
    method OutputConditionIdentifier {...};
    method RegistryName {...};
    method Info {...};
    method DestOutputProfile {...};
    method DestOutputProfileRef {...};
    method MixingHints {...};
    method SpectralData {...};
}

=begin pod

=head1 Description

Table 401 — Entries in an output intent dictionary

=head1 Methods (Entries)

=head2 Type [name]
- (Optional) The type of PDF object that this dictionary describes; if present, is OutputIntent for an output intent dictionary.

=head2 S [name]
- (Required) The output intent subtype. The value may be GTS_PDFX, GTS_PDFA1, ISO_PDFE1 or a key defined by an ISO 32000 extension.

=head2 OutputCondition [text string]
- (Optional) A text string concisely identifying the intended output device or production condition in human-readable form. This is the preferred method of defining such a string for presentation to the user.

=head2 OutputConditionIdentifier [text string]
- (Required) A text string identifying the intended output device or production condition in human- or machine-readable form. If human-readable, this string may be used in lieu of an OutputCondition string for presentation to the user.
A typical value for this entry may be the name of a production condition maintained in an industry-standard registry such as the ICC Characterization Data Registry. If the designated condition matches that in effect at production time, the production software is responsible for providing the corresponding ICC profile as defined in the registry.
If the intended production condition is not a recognised standard, the value of this entry may be Custom or an application-specific, machine-readable name. The DestOutputProfile entry defines the ICC profile, and the Info entry is used for further human-readable identification.

=head2 RegistryName [text string]
- (Optional) A text string (conventionally a uniform resource identifier, or URI) identifying the registry in which the condition designated by OutputConditionIdentifier is defined.

=head2 Info [text string]
- (Required if OutputConditionIdentifier does not specify a standard production condition; optional otherwise) A human-readable text string containing additional information or comments about the intended target device or production condition.

=head2 DestOutputProfile [stream]
- (Required if OutputConditionIdentifier does not specify a standard production condition; optional otherwise) An ICC profile stream defining the transformation from the PDF document’s source colours to output device colourants.
The format of the profile stream is the same as that used in specifying an ICCBased colour space (see 8.6.5.5, "ICCBased colour spaces"). The output transformation uses the profile’s "from CIE" information (BToA in ICC terminology); the "to CIE" (AToB) information may optionally be used to remap source colour values to some other destination colour space, such as for screen preview or hardcopy proofing.

=head2 DestOutputProfileRef [dictionary]
- (Optional; PDF 2.0) A dictionary containing information about one or more referenced ICC profiles. See "Table 402 — Entries in a DestOutputProfileRef dictionary".

=head2 MixingHints [dictionary]
- (Optional, PDF 2.0) A DeviceN Mixing Hints dictionary ("Table 72 — Entries in a DeviceN mixing hints dictionary") which does not contain a DotGain key.
NOTE 1 This is because dot gain information is better handled according to ISO 17972-4.
In addition, each key in the Solidities dictionary referenced from the MixingHints dictionary does not also be present in the SpectralData dictionary within the same output intent.
NOTE 2 This is because it would not be clear which one is to be used, so only allowing one place where such data are present avoids the conflict.
This document intentionally does not specify how a PDF processor may make use of the data provided in the MixingHints dictionary, and a PDF processor may ignore such data altogether.
EXAMPLE 1 The data in the MixingHints dictionary could be used in the process of rendering or color converting the colourants specified in the Solidities dictionary referenced from the MixingHints dictionary.

=head2 SpectralData [dictionary]
- (Optional, PDF 2.0) A dictionary where each key represents a colourant name as defined in 8.6.6.4, "Separation colour spaces" and where the value of each key is a stream whose contents represents CxF/X-4 spot colour characterisation data that conform to ISO 17972-4. This stream contains exactly one SpotInkCharacterisation element whose SpotInkName matches the colourant name (see 7.3.5, "Name objects"). In addition, this stream may contain zero or more further SpotInkCharacterisation elements, and/or other data.
NOTE 3 This facilitates referencing the same CxF/X-4 data stream from more than one entry in the SpectralData dictionary, as long as for each such entry there is a matching SpotInkCharacterisation entry in the CxF/X-4 data stream.
In addition, each key in this dictionary does not also be present in the Solidities dictionary referenced from the MixingHints dictionary within the same output intent.
NOTE 4 This is because it would not be clear which one is to be used, so by only allowing one place where such data are present it avoids the conflict.
This document intentionally does not specify how a PDF processor may make use of the data provided in the SpectralData dictionary, and a PDF processor may ignore such data altogether.
EXAMPLE 2 The data in the SpectralData dictionary could be used in the process of rendering or colour converting the colourants specified in the SpectralData dictionary.

=end pod
