//
//  SEGraphics.m
//  The Spectacular Sync Engine
//
//  Created by Michael Tyson on 5/02/2015.
//  Copyright (c) 2015 A Tasty Pixel. All rights reserved.
//
//  Generated by PaintCode (www.paintcodeapp.com)
//

#import "SEGraphics.h"


@implementation SEGraphics

#pragma mark Cache

static UIColor* _activeColor = nil;
static UIColor* _outerGradientColor = nil;
static UIColor* _innerGradientColor = nil;

static PCGradient* _backgroundGradient = nil;

#pragma mark Initialization

+ (void)initialize
{
    // Colors Initialization
    _activeColor = [UIColor colorWithRed: 0.933 green: 0.538 blue: 0.097 alpha: 1];
    _outerGradientColor = [UIColor colorWithRed: 0.1 green: 0.064 blue: 0.001 alpha: 1];
    _innerGradientColor = [UIColor colorWithRed: 0.29 green: 0.159 blue: 0.004 alpha: 1];

    // Gradients Initialization
    CGFloat backgroundGradientLocations[] = {0, 1};
    _backgroundGradient = [PCGradient gradientWithColors: @[SEGraphics.innerGradientColor, SEGraphics.outerGradientColor] locations: backgroundGradientLocations];

}

#pragma mark Colors

+ (UIColor*)activeColor { return _activeColor; }
+ (UIColor*)outerGradientColor { return _outerGradientColor; }
+ (UIColor*)innerGradientColor { return _innerGradientColor; }

#pragma mark Gradients

+ (PCGradient*)backgroundGradient { return _backgroundGradient; }

#pragma mark Drawing Methods

+ (void)drawPauseWithFrame: (CGRect)frame
{


    //// Subframes
    CGRect rectangles = CGRectMake(CGRectGetMinX(frame) + floor(CGRectGetWidth(frame) * 0.26316 + 0.5), CGRectGetMinY(frame) + floor(CGRectGetHeight(frame) * 0.25263 + 0.5), floor(CGRectGetWidth(frame) * 0.74737 + 0.5) - floor(CGRectGetWidth(frame) * 0.26316 + 0.5), floor(CGRectGetHeight(frame) * 0.77895 + 0.5) - floor(CGRectGetHeight(frame) * 0.25263 + 0.5));


    //// Rectangles
    {
        //// Rectangle 2 Drawing
        UIBezierPath* rectangle2Path = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(rectangles) + floor(CGRectGetWidth(rectangles) * 0.00000 + 0.5), CGRectGetMinY(rectangles) + floor(CGRectGetHeight(rectangles) * 0.00000 + 0.5), floor(CGRectGetWidth(rectangles) * 0.43478 + 0.5) - floor(CGRectGetWidth(rectangles) * 0.00000 + 0.5), floor(CGRectGetHeight(rectangles) * 1.00000 + 0.5) - floor(CGRectGetHeight(rectangles) * 0.00000 + 0.5))];
        [SEGraphics.activeColor setStroke];
        rectangle2Path.lineWidth = 2;
        [rectangle2Path stroke];


        //// Rectangle 1 Drawing
        UIBezierPath* rectangle1Path = [UIBezierPath bezierPathWithRect: CGRectMake(CGRectGetMinX(rectangles) + floor(CGRectGetWidth(rectangles) * 0.56522 + 0.5), CGRectGetMinY(rectangles) + floor(CGRectGetHeight(rectangles) * 0.00000 + 0.5), floor(CGRectGetWidth(rectangles) * 1.00000 + 0.5) - floor(CGRectGetWidth(rectangles) * 0.56522 + 0.5), floor(CGRectGetHeight(rectangles) * 1.00000 + 0.5) - floor(CGRectGetHeight(rectangles) * 0.00000 + 0.5))];
        [SEGraphics.activeColor setStroke];
        rectangle1Path.lineWidth = 2;
        [rectangle1Path stroke];
    }


    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(frame) + 1, CGRectGetMinY(frame) + 1, CGRectGetWidth(frame) - 2, CGRectGetHeight(frame) - 2)];
    [SEGraphics.activeColor setStroke];
    ovalPath.lineWidth = 2;
    [ovalPath stroke];
}

+ (void)drawPlayWithFrame: (CGRect)frame
{

    //// Oval Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(frame) + 1, CGRectGetMinY(frame) + 1, CGRectGetWidth(frame) - 2, CGRectGetHeight(frame) - 2)];
    [SEGraphics.activeColor setStroke];
    ovalPath.lineWidth = 2;
    [ovalPath stroke];


    //// Triangle Drawing
    UIBezierPath* trianglePath = UIBezierPath.bezierPath;
    [trianglePath moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34737 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77895 * CGRectGetHeight(frame))];
    [trianglePath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34737 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.24211 * CGRectGetHeight(frame))];
    [trianglePath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.80000 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.51053 * CGRectGetHeight(frame))];
    [trianglePath addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.34737 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.77895 * CGRectGetHeight(frame))];
    [trianglePath closePath];
    trianglePath.miterLimit = 4;

    trianglePath.usesEvenOddFillRule = YES;

    [SEGraphics.activeColor setStroke];
    trianglePath.lineWidth = 2;
    [trianglePath stroke];
}

+ (void)drawForwardWithFrame: (CGRect)frame
{

    //// Oval-2 Drawing
    UIBezierPath* oval2Path = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(frame) + 1, CGRectGetMinY(frame) + 1, CGRectGetWidth(frame) - 2, CGRectGetHeight(frame) - 2)];
    [SEGraphics.activeColor setStroke];
    oval2Path.lineWidth = 2;
    [oval2Path stroke];


    //// Triangle-1 Drawing
    UIBezierPath* triangle1Path = UIBezierPath.bezierPath;
    [triangle1Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.30769 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65385 * CGRectGetHeight(frame))];
    [triangle1Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.30769 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34615 * CGRectGetHeight(frame))];
    [triangle1Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.51923 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50000 * CGRectGetHeight(frame))];
    [triangle1Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.30769 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65385 * CGRectGetHeight(frame))];
    [triangle1Path closePath];
    triangle1Path.miterLimit = 4;

    triangle1Path.usesEvenOddFillRule = YES;

    [SEGraphics.activeColor setStroke];
    triangle1Path.lineWidth = 2;
    [triangle1Path stroke];


    //// Triangle-2 Drawing
    UIBezierPath* triangle2Path = UIBezierPath.bezierPath;
    [triangle2Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.55769 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65385 * CGRectGetHeight(frame))];
    [triangle2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.55769 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34615 * CGRectGetHeight(frame))];
    [triangle2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.76923 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50000 * CGRectGetHeight(frame))];
    [triangle2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.55769 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65385 * CGRectGetHeight(frame))];
    [triangle2Path closePath];
    triangle2Path.miterLimit = 4;

    triangle2Path.usesEvenOddFillRule = YES;

    [SEGraphics.activeColor setStroke];
    triangle2Path.lineWidth = 2;
    [triangle2Path stroke];
}

+ (void)drawBackWithFrame: (CGRect)frame
{

    //// Triangle-1 Drawing
    UIBezierPath* triangle1Path = UIBezierPath.bezierPath;
    [triangle1Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.69231 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65385 * CGRectGetHeight(frame))];
    [triangle1Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.69231 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34615 * CGRectGetHeight(frame))];
    [triangle1Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.48077 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50000 * CGRectGetHeight(frame))];
    [triangle1Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.69231 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65385 * CGRectGetHeight(frame))];
    [triangle1Path closePath];
    triangle1Path.miterLimit = 4;

    triangle1Path.usesEvenOddFillRule = YES;

    [SEGraphics.activeColor setStroke];
    triangle1Path.lineWidth = 2;
    [triangle1Path stroke];


    //// Triangle-2 Drawing
    UIBezierPath* triangle2Path = UIBezierPath.bezierPath;
    [triangle2Path moveToPoint: CGPointMake(CGRectGetMinX(frame) + 0.44231 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65385 * CGRectGetHeight(frame))];
    [triangle2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.44231 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.34615 * CGRectGetHeight(frame))];
    [triangle2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.23077 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.50000 * CGRectGetHeight(frame))];
    [triangle2Path addLineToPoint: CGPointMake(CGRectGetMinX(frame) + 0.44231 * CGRectGetWidth(frame), CGRectGetMinY(frame) + 0.65385 * CGRectGetHeight(frame))];
    [triangle2Path closePath];
    triangle2Path.miterLimit = 4;

    triangle2Path.usesEvenOddFillRule = YES;

    [SEGraphics.activeColor setStroke];
    triangle2Path.lineWidth = 2;
    [triangle2Path stroke];


    //// Oval- Drawing
    UIBezierPath* ovalPath = [UIBezierPath bezierPathWithOvalInRect: CGRectMake(CGRectGetMinX(frame) + 1, CGRectGetMinY(frame) + 1, CGRectGetWidth(frame) - 2, CGRectGetHeight(frame) - 2)];
    [SEGraphics.activeColor setStroke];
    ovalPath.lineWidth = 2;
    [ovalPath stroke];
}

@end



@interface PCGradient ()
{
    CGGradientRef _CGGradient;
}
@end

@implementation PCGradient

- (instancetype)initWithColors: (NSArray*)colors locations: (const CGFloat*)locations
{
    self = super.init;
    if (self)
    {
        CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
        NSMutableArray* cgColors = NSMutableArray.array;
        for (UIColor* color in colors)
            [cgColors addObject: (id)color.CGColor];

        _CGGradient = CGGradientCreateWithColors(colorSpace, (__bridge CFArrayRef)cgColors, locations);
        CGColorSpaceRelease(colorSpace);
    }
    return self;
}

+ (instancetype)gradientWithColors: (NSArray*)colors locations: (const CGFloat*)locations
{
    return [self.alloc initWithColors: colors locations: locations];
}

+ (instancetype)gradientWithStartingColor: (UIColor*)startingColor endingColor: (UIColor*)endingColor
{
    CGFloat locations[] = {0, 1};
    return [self.alloc initWithColors: @[startingColor, endingColor] locations: locations];
}

- (void)dealloc
{
    CGGradientRelease(_CGGradient);
}

@end
