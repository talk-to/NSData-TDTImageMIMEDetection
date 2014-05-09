
#import "NSData+ImageMIMEDetection.h"

static NSUInteger const JPEGHeaderLength = 4;

@implementation NSData (ImageMIMEDetection)

- (BOOL)isJPEG {
  if (self.length < JPEGHeaderLength) {
    return NO;
  }

  unsigned char buffer[JPEGHeaderLength];
  [self getBytes:&buffer length:JPEGHeaderLength];

  buffer[3] = buffer[3] & 0xF0;

  return (buffer[0] == 0xFF &&
          buffer[1] == 0xD8 &&
          buffer[2] == 0xFF &&
          buffer[3] == 0xE0);
}

- (NSString *)tdt_MIMEType {
  if ([self isJPEG]) {
    return @"image/jpeg";
  }

  return nil;
}

@end
