
#import "NSData+ImageMIMEDetection.h"

static NSUInteger const JPEGHeaderLength = 4;

@implementation NSData (ImageMIMEDetection)

- (NSString *)tdt_MIMEType {
  if (self.length < JPEGHeaderLength) {
    return nil;
  }
  unsigned char buffer[JPEGHeaderLength];
  [self getBytes:&buffer length:JPEGHeaderLength];

  buffer[3] = buffer[3] & 0xF0;

  BOOL isJPEG = (buffer[0] == 0xFF &&
                 buffer[1] == 0xD8 &&
                 buffer[2] == 0xFF &&
                 buffer[3] == 0xE0);

  if (isJPEG) {
    return @"image/jpeg";
  }
}

@end
