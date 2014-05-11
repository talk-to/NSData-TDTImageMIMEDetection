//
//  ImageMIMEDetectionTests.m
//  ImageMIMEDetectionTests
//
//  Created by Ayush on 08/05/14.
//  Copyright (c) 2014 Talk.to. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <NSData+ImageMIMEDetection/NSData+ImageMIMEDetection.h>

@interface ImageMIMEDetectionTests : XCTestCase

@property (nonatomic) UIImage *image;

@end

@implementation ImageMIMEDetectionTests

- (void)setUp {
  [super setUp];
  self.image = [UIImage imageNamed:@"PNG.png"];
}

- (void)tearDown {
  self.image = nil;
  [super tearDown];
}

- (void)testItReturnsNilForEmptyData {
  NSData *data = [NSData data];
  XCTAssertNil([data tdt_MIMEType]);
}

- (void)testItDetectsJPEGImageCorectly {
  NSData *data = UIImageJPEGRepresentation(self.image, 1.0);
  NSString *MIMEType = [data tdt_MIMEType];
  XCTAssertEqualObjects(MIMEType, @"image/jpeg");
}

- (void)testItDetectsPNGImageCorectly {
  NSData *data = UIImagePNGRepresentation(self.image);
  NSString *MIMEType = [data tdt_MIMEType];
  XCTAssertEqualObjects(MIMEType, @"image/png");
}

@end
