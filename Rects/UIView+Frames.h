//
//  UIView+Frames.h
//  Rects
//
//  Created by Mason Silber on 3/2/14.
//  Copyright (c) 2014 MasonSilber. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frames)

#pragma mark - Accessors

- (CGPoint)origin;
- (CGFloat)originX;
- (CGFloat)originY;
- (CGSize)size;
- (CGFloat)width;
- (CGFloat)height;
- (CGFloat)centerX;
- (CGFloat)centerY;
- (CGFloat)minX;
- (CGFloat)maxX;
- (CGFloat)minY;
- (CGFloat)maxY;

#pragma mark - Mutators

- (void)moveUp:(NSInteger)numberOfPixels animated:(BOOL)animated;
- (void)moveDown:(NSInteger)numberOfPixels animated:(BOOL)animated;
- (void)moveLeft:(NSInteger)numberOfPixels animated:(BOOL)animated;
- (void)moveRight:(NSInteger)numberOfPixels animated:(BOOL)animated;

- (void)expandByFactor:(NSInteger)factor animated:(BOOL)animated;
- (void)contractByFactor:(NSInteger)factor animated:(BOOL)animated;

- (void)rotateClockwise:(NSInteger)degrees animated:(BOOL)animated;
- (void)rotateClockwise:(NSInteger)degrees aboutPoint:(CGPoint)point animated:(BOOL)animated;
- (void)rotateCounterclockwise:(NSInteger)degrees animated:(BOOL)animated;
- (void)rotateCounterclockwise:(NSInteger)degrees aboutPoint:(CGPoint)point animated:(BOOL)animated;

@end
