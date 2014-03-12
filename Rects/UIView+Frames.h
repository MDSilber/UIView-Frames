//
//  UIView+Frames.h
//  Rects
//
//  Created by Mason Silber on 3/2/14.
//  Copyright (c) 2014 MasonSilber. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Frames)

#pragma mark - Getters

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

#pragma mark - Setters

- (void)setOrigin:(CGPoint)origin animated:(BOOL)animated;
- (void)setOriginX:(CGFloat)x animated:(BOOL)animated;
- (void)setOriginY:(CGFloat)y animated:(BOOL)animated;
- (void)setSize:(CGSize)size animated:(BOOL)animated;
- (void)setWidth:(CGFloat)width animated:(BOOL)animated;
- (void)setHeight:(CGFloat)height animated:(BOOL)animated;
- (void)setCenterX:(CGFloat)x animated:(BOOL)animated;
- (void)setCenterY:(CGFloat)y animated:(BOOL)animated;

#pragma mark - Mutators

- (void)moveUp:(NSInteger)numberOfPixels animated:(BOOL)animated;
- (void)moveDown:(NSInteger)numberOfPixels animated:(BOOL)animated;
- (void)moveLeft:(NSInteger)numberOfPixels animated:(BOOL)animated;
- (void)moveRight:(NSInteger)numberOfPixels animated:(BOOL)animated;

- (void)expandByFactor:(CGFloat)factor animated:(BOOL)animated;
- (void)contractByFactor:(CGFloat)factor animated:(BOOL)animated;

- (void)rotateClockwise:(NSInteger)degrees animated:(BOOL)animated;
- (void)rotateClockwise:(NSInteger)degrees aboutPoint:(CGPoint)point animated:(BOOL)animated;
- (void)rotateCounterclockwise:(NSInteger)degrees animated:(BOOL)animated;
- (void)rotateCounterclockwise:(NSInteger)degrees aboutPoint:(CGPoint)point animated:(BOOL)animated;

#pragma mark - Helpers

- (BOOL)intersectsView:(UIView *)view;
- (BOOL)containsView:(UIView *)view;

CGRect MakeFrame(float originX, float originY, float width, float height);

@end
