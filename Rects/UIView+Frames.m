//
//  UIView+Frames.m
//  Rects
//
//  Created by Mason Silber on 3/2/14.
//  Copyright (c) 2014 MasonSilber. All rights reserved.
//

#import "UIView+Frames.h"

@implementation UIView (Frames)

#pragma mark - Getters

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

#pragma mark - Setters

- (void)setOrigin:(CGPoint)origin animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _setOrigin:origin];
        } completion:nil];
    } else {
        [self _setOrigin:origin];
    }
}

- (void)_setOrigin:(CGPoint)origin
{
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (void)setOriginX:(CGFloat)x animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _setOriginX:x];
        } completion:nil];
    } else {
        [self _setOriginX:x];
    }
}

- (void)_setOriginX:(CGFloat)x
{
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (void)setOriginY:(CGFloat)y animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _setOriginY:y];
        } completion:nil];
    } else {
        [self _setOriginY:y];
    }
}

- (void)_setOriginY:(CGFloat)y
{
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (void)setSize:(CGSize)size animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _setSize:size];
        } completion:nil];
    } else {
        [self _setSize:size];
    }
}

- (void)_setSize:(CGSize)size
{
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (void)setWidth:(CGFloat)width animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _setWidth:width];
        } completion:nil];
    } else {
            [self _setWidth:width];
    }
}

- (void)_setWidth:(CGFloat)width
{
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (void)setHeight:(CGFloat)height animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _setHeight:height];
        } completion:nil];
    } else {
            [self _setHeight:height];
    }
}

- (void)_setHeight:(CGFloat)height
{
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (void)setCenterX:(CGFloat)x animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _setCenterX:x];
        } completion:nil];
    } else {
        [self _setCenterX:x];
    }
}

- (void)_setCenterX:(CGFloat)x
{
    CGPoint center = self.center;
    center.x = x;
    self.center = center;
}

- (void)setCenterY:(CGFloat)y animated:(BOOL)animated
{
    if (animated) {
        [UIView animateWithDuration:0.5f animations:^{
            [self _setCenterY:y];
        } completion:nil];
    } else {
            [self _setCenterY:y];
    }
}

- (void)_setCenterY:(CGFloat)y
{
    CGPoint center = self.center;
    center.y = y;
    self.center = center;
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

#pragma mark - Helpers

- (BOOL)intersectsView:(UIView *)view
{
    return CGRectIntersectsRect(self.frame, view.frame);
}

- (BOOL)containsView:(UIView *)view
{
    return CGRectContainsRect(self.frame, view.frame);
}

@end
