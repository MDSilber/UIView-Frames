//
//  UIView+Frames.m
//  Rects
//
//  Created by Mason Silber on 3/2/14.
//  Copyright (c) 2014 MasonSilber. All rights reserved.
//

#import "UIView+Frames.h"

@implementation UIView (Frames)

#pragma mark - Accessors

- (CGPoint)origin
{
    return self.frame.origin;
}

- (CGFloat)originX
{
    return self.frame.origin.x;
}

- (CGFloat)originY
{
    return self.frame.origin.y;
}

- (CGSize)size
{
    return self.frame.size;
}

- (CGFloat)width
{
    return CGRectGetWidth(self.frame);
}

- (CGFloat)height
{
    return CGRectGetHeight(self.frame);
}

- (CGFloat)centerX
{
    return CGRectGetMidX(self.frame);
}

- (CGFloat)centerY
{
    return CGRectGetMidY(self.frame);
}

- (CGFloat)minX
{
    return CGRectGetMinX(self.frame);
}

- (CGFloat)maxX
{
    return CGRectGetMaxX(self.frame);
}

- (CGFloat)minY
{
    return CGRectGetMinY(self.frame);
}

- (CGFloat)maxY
{
    return CGRectGetMaxY(self.frame);
}

#pragma mark - Mutators

- (void)moveUp:(NSInteger)numberOfPixels animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _moveUp:numberOfPixels];
        } completion:nil];
    } else {
        [self _moveUp:numberOfPixels];
    }
}

- (void)_moveUp:(NSInteger)numberOfPixels
{
    CGRect frame = self.frame;
    frame.origin.y += numberOfPixels;
    self.frame = frame;
}

- (void)moveDown:(NSInteger)numberOfPixels animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _moveDown:numberOfPixels];
        } completion:nil];
    } else {
        [self _moveDown:numberOfPixels];
    }
}

- (void)_moveDown:(NSInteger)numberOfPixels
{
    CGRect frame = self.frame;
    frame.origin.y -= numberOfPixels;
    self.frame = frame;
}

- (void)moveLeft:(NSInteger)numberOfPixels animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _moveLeft:numberOfPixels];
        } completion:nil];
    } else {
        [self _moveLeft:numberOfPixels];
    }
}

- (void)_moveLeft:(NSInteger)numberOfPixels
{
    CGRect frame = self.frame;
    frame.origin.x -= numberOfPixels;
    self.frame = frame;
}

- (void)moveRight:(NSInteger)numberOfPixels animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _moveRight:numberOfPixels];
        } completion:nil];
    } else {
        [self _moveRight:numberOfPixels];
    }
}

- (void)_moveRight:(NSInteger)numberOfPixels
{
    CGRect frame = self.frame;
    frame.origin.x += numberOfPixels;
    self.frame = frame;
}

- (void)expandByFactor:(NSInteger)factor animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _expandByFactor:factor];
        } completion:nil];
    } else {
        [self _expandByFactor:factor];
    }
}

- (void)_expandByFactor:(NSInteger)factor
{
    
}

- (void)contractByFactor:(NSInteger)factor animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _contractByFactor:factor];
        } completion:nil];
    } else {
        [self _contractByFactor:factor];
    }
}

- (void)_contractByFactor:(NSInteger)factor
{
    
}

- (void)rotateClockwise:(NSInteger)degrees animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _rotateClockwise:degrees];
        } completion:nil];
    } else {
        [self _rotateClockwise:degrees];
    }
}

- (void)_rotateClockwise:(NSInteger)degrees
{
    
}

- (void)rotateClockwise:(NSInteger)degrees aboutPoint:(CGPoint)point animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _rotateClockwise:degrees aboutPoint:point];
        } completion:nil];
    } else {
        [self _rotateClockwise:degrees aboutPoint:point];
    }
}

- (void)_rotateClockwise:(NSInteger)degrees aboutPoint:(CGPoint)point
{
    
}

- (void)rotateCounterclockwise:(NSInteger)degrees animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _rotateCounterclockwise:degrees];
        } completion:nil];
    } else {
        [self _rotateCounterclockwise:degrees];
    }
}

- (void)_rotateCounterclockwise:(NSInteger)degrees
{
    
}

- (void)rotateCounterclockwise:(NSInteger)degrees aboutPoint:(CGPoint)point animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _rotateCounterclockwise:degrees aboutPoint:point];
        } completion:nil];
    } else {
        [self _rotateCounterclockwise:degrees aboutPoint:point];
    }
}

- (void)_rotateCounterclockwise:(NSInteger)degrees aboutPoint:(CGPoint)point
{
    
}

@end
