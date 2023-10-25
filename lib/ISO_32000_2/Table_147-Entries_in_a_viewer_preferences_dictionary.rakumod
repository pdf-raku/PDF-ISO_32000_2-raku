use v6;
role ISO_32000_2::Table_147-Entries_in_a_viewer_preferences_dictionary {
    method HideToolbar {...};
    method HideMenubar {...};
    method HideWindowUI {...};
    method FitWindow {...};
    method CenterWindow {...};
    method DisplayDocTitle {...};
    method NonFullScreenPageMode {...};
    method Direction {...};
    method ViewArea {...};
    method ViewClip {...};
    method PrintArea {...};
    method PrintClip {...};
    method PrintScaling {...};
    method Duplex {...};
    method PickTrayByPDFSize {...};
    method PrintPageRange {...};
    method NumCopies {...};
    method Enforce {...};
}

=begin pod

=head1 Description

Table 147 — Entries in a viewer preferences dictionary

=head1 Methods (Entries)

=head2 HideToolbar [boolean]
- (Optional) A flag specifying whether to hide the interactive PDF processor’s tool bars when the document is active.
Default value: false.

=head2 HideMenubar [boolean]
- (Optional) A flag specifying whether to hide the interactive PDF processor’s menu bar when the document is active.
Default value: false.

=head2 HideWindowUI [boolean]
- (Optional) A flag specifying whether to hide user interface elements in the document’s window (such as scroll bars and navigation controls), leaving only the document’s contents displayed. D
efault value: false.

=head2 FitWindow [boolean]
- (Optional) A flag specifying whether to resize the document’s window to fit the size of the first displayed page. Default value: false.

=head2 CenterWindow [boolean]
- (Optional) A flag specifying whether to position the document’s window in the centre of the screen. Default value: false.

=head2 DisplayDocTitle [boolean]
- (Optional; PDF 1.4) A flag specifying whether the window’s title bar displays the document title taken from the dc:title element of the XMP metadata stream (see 14.3.2, "Metadata streams"). If false, the title bar should instead display the name of the PDF file containing the document. Default value: false.

=head2 NonFullScreenPageMode [name]
- (Optional) The document’s page mode, specifying how to display the document on exiting full-screen mode:
UseNone Neither document outline nor thumbnail images visible
UseOutlines Document outline visible
UseThumbs Thumbnail images visible
UseOC Optional content group panel visible
This entry is meaningful only if the value of the PageMode entry in the catalog dictionary (see 7.7.2, "Document catalog dictionary") is FullScreen; it is ignored otherwise. Default value: UseNone.

=head2 Direction [name]
- (Optional; PDF 1.3) The predominant logical content order for text:
L2R Left to right
R2L Right to left (including vertical writing systems, such as Chinese, Japanese, and Korean)
This entry has no direct effect on the document’s contents or page numbering but may be used to determine the relative positioning of pages when displayed side by side or printed n-up. Default value: L2R.

=head2 ViewArea [name]
- (Optional; PDF 1.4; deprecated in PDF 2.0) The name of the page boundary representing the area of a page that is displayed when viewing the document on the screen. The value is the key designating the relevant page boundary in the page object (see 7.7.3, "Page tree" and 14.11.2, "Page boundaries"). If the specified page boundary is not defined in the page object, its default value is used, as specified in "Table 31 — Entries in a page object". Default value: CropBox.
This entry is intended primarily for use by prepress applications that interpret or manipulate the page boundaries as described in 14.11.2, "Page boundaries".
The presence of this value in a PDF may cause a PDF to display differently from how it will be printed.

=head2 ViewClip [name]
- (Optional; PDF 1.4; deprecated in PDF 2.0) The name of the page boundary to which the contents of a page is clipped when viewing the document on the screen. The value is the key designating the relevant page boundary in the page object (see 7.7.3, "Page tree" and 14.11.2, "Page boundaries"). If the specified page boundary is not defined in the page object, its default value is used, as specified in "Table 31 — Entries in a page object". Default value: CropBox.
This entry is intended primarily for use by prepress applications that interpret or manipulate the page boundaries as described in 14.11.2, "Page boundaries".
The presence of this value in a PDF may cause a PDF to display differently from how it will be printed.

=head2 PrintArea [name]
- (Optional; PDF 1.4; deprecated in PDF 2.0) The name of the page boundary representing the area of a page that is rendered when printing the document. The value is the key designating the relevant page boundary in the page object (see 7.7.3, "Page tree" and 14.11.2, "Page boundaries"). If the specified page boundary is not defined in the page object, its default value is used, as specified in "Table 31 — Entries in a page object". Default value: CropBox.
This entry is intended primarily for use by prepress applications that interpret or manipulate the page boundaries as described in 14.11.2, "Page boundaries".
The presence of this value in a PDF may cause a PDF to display differently from how it will be printed.

=head2 PrintClip [name]
- (Optional; PDF 1.4; deprecated in PDF 2.0) The name of the page boundary to which the contents of a page is clipped when printing the document. The value is the key designating the relevant page boundary in the page object (see 7.7.3, "Page tree" and 14.11.2, "Page boundaries"). If the specified page boundary is not defined in the page object, its default value is used, as specified in "Table 31 — Entries in a page object". Default value: CropBox.
This entry is intended primarily for use by prepress applications that interpret or manipulate the page boundaries as described in 14.11.2, "Page boundaries".
The presence of this value in a PDF may cause a PDF to display differently from how it will be printed.

=head2 PrintScaling [name]
- (Optional; PDF 1.6) The page scaling option that is selected when a print dialogue is displayed for this document. Valid values are None, which indicates no page scaling, and AppDefault, which indicates the interactive PDF processor’s default print scaling. If this entry has an unrecognised value, AppDefault is used. Default value: AppDefault.
If the print dialogue is suppressed and its parameters are provided from some other source, this entry nevertheless is honoured.

=head2 Duplex [name]
- (Optional; PDF 1.7) The paper handling option that is used when printing the PDF file from the print dialogue. The following values are valid:
Simplex Print single-sided
DuplexFlipShortEdge Duplex and flip on the short edge of the sheet
DuplexFlipLongEdge Duplex and flip on the long edge of the sheet
Default value: implementation dependent

=head2 PickTrayByPDFSize [boolean]
- (Optional; PDF 1.7) A flag specifying whether the PDF page size is used to select the input paper tray. This setting influences only the preset values used to populate the print dialogue presented by an interactive PDF processor. If PickTrayByPDFSize is true, the check box in the print dialogue associated with input paper tray is checked.
This setting has no effect on operating systems that do not provide the ability to pick the input tray by size.
Default value: implementation dependent

=head2 PrintPageRange [array]
- (Optional; PDF 1.7) The page numbers used to initialise the print dialogue box when the PDF file is printed. The array contains an even number of integers to be interpreted in pairs, with each pair specifying the first and last pages in a sub-range of pages to be printed. The first page of the PDF file is denoted by 1.
Default value: implementation dependent
NOTE Although PrintPageRange uses 1-based page numbering, other features of PDF use zero-based page numbering.

=head2 NumCopies [integer]
- (Optional; PDF 1.7) The number of copies that is printed when the print dialog is opened for this PDF file.
Default value: implementation dependent, but typically 1

=head2 Enforce [array]
- (Optional; PDF 2.0) An array of names of Viewer preference settings that is enforced by PDF processors and that is not overridden by subsequent selections in the application user interface. "Table 148 — Names defined for an Enforce array" specifies names that is valid to use in this array.

=end pod
