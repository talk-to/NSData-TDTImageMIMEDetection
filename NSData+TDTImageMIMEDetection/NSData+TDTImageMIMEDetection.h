
@interface NSData (TDTImageMIMEDetection)

/**
 Try to deduce the MIME type.

 @return string representation of detected MIME type. `nil` if not able to
 detect the MIME type.

 @see http://en.wikipedia.org/wiki/Internet_media_type

 @note Currently, only able to detect JPEG and PNG images data.
 */
- (NSString *)tdt_MIMEType;

@end
