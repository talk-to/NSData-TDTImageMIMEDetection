
#import "NSData+TDTImageMIMEDetection.h"

static NSUInteger const JPEGHeaderLength = 4;
static NSUInteger const PNGHeaderLength = 4;

@implementation NSData (TDTImageMIMEDetection)

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

- (BOOL)isPNG {
  if (self.length < PNGHeaderLength) {
    return NO;
  }

  unsigned char buffer[PNGHeaderLength];
  [self getBytes:&buffer length:PNGHeaderLength];

  return (buffer[0] == 0x89 &&
          buffer[1] == 0x50 &&
          buffer[2] == 0x4E &&
          buffer[3] == 0x47);

}

- (NSString *)tdt_MIMEType {
  if ([self isJPEG]) {
    return @"image/jpeg";
  }

  if ([self isPNG]) {
    return @"image/png";
  }

  return nil;
}

@end
