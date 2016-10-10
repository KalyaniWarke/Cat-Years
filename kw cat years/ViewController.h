//
//  ViewController.h
//  kw cat years
//
//  Created by Student P_04 on 09/09/16.
//  Copyright © 2016 warke kalyani. All rights reserved.
//
#define kAllUIElementHeight 60.0
#define kHorizentalPadding 20.0
#define kVerticalPadding 50.0
#import <UIKit/UIKit.h>

@interface ViewController :UIViewController <UITextFieldDelegate>
{
    CGFloat screenWidth;
    CGFloat screenHeight;
    CGFloat humanAgeWidth;
    CGFloat catButtonwidth;
    CGFloat ageInCatYearsWidth;
    CGFloat catButtonYCoordinate;
    CGFloat ageInCatYearsYCoordinate;
    UITextField *myHumanAge;
    UILabel *ageInCatYears;
}
@end

