//
//  ViewController.m
//  kw cat years
//
//  Created by Student P_04 on 09/09/16.
//  Copyright © 2016 warke kalyani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    screenWidth =[[UIScreen mainScreen]bounds].size.width;
    screenHeight =[[UIScreen mainScreen]bounds].size.height;
    humanAgeWidth = screenWidth -(2*kHorizentalPadding);
    
    catButtonYCoordinate = 100+kVerticalPadding +kAllUIElementHeight;
    
    ageInCatYearsYCoordinate = catButtonYCoordinate + kAllUIElementHeight+
    (kVerticalPadding);
    
    ageInCatYearsWidth = screenWidth-(2*kHorizentalPadding);
    
    catButtonwidth = screenWidth -(8*kHorizentalPadding);
    
    self.view.backgroundColor=[UIColor grayColor];
    
    myHumanAge = [[UITextField alloc]initWithFrame:CGRectMake(kHorizentalPadding, 100, humanAgeWidth, kAllUIElementHeight)];
   // [myHumanAge setText:@"Enter Human Age"];
    
    myHumanAge.backgroundColor = [UIColor whiteColor];
    [myHumanAge setBorderStyle:UITextBorderStyleBezel];
    myHumanAge.textAlignment = NSTextAlignmentCenter;
    myHumanAge.delegate = self;
    
    myHumanAge.keyboardType = UIKeyboardTypeNumberPad;
    
    
    
    [self.view addSubview:myHumanAge];
    UIButton *catButton =[[UIButton alloc]initWithFrame:CGRectMake((4*kHorizentalPadding), catButtonYCoordinate, catButtonwidth-(kHorizentalPadding), kAllUIElementHeight)];
    
    catButton.backgroundColor = [UIColor cyanColor];
    
    catButton.layer.cornerRadius = 20;
    
    [catButton addTarget:self action:@selector(handleCat) forControlEvents:UIControlEventTouchUpInside];
    [catButton setTitle:@"Calculate Cat Year" forState:(UIControlStateNormal)];
    [catButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:catButton];
    
    ageInCatYears =[[UILabel alloc]initWithFrame:CGRectMake(kHorizentalPadding, ageInCatYearsYCoordinate, ageInCatYearsWidth, kAllUIElementHeight)];
    ageInCatYears.backgroundColor =[UIColor whiteColor];
    ageInCatYears.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:ageInCatYears];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)handleCat{
    
    [self displayContent:myHumanAge.text];
    
    
}

-(void) displayContent:(NSString *)content
{
    int intAge = content.intValue;
    if(content)
    {
        if(intAge>0&&intAge<115) {
            NSString *currentValueString = myHumanAge.text;
            
            float currentValueInt = currentValueString.floatValue;
            
            currentValueInt = currentValueInt /7;
            
            NSString *newValueString = [NSString stringWithFormat:@"  Catyear is:%0.02f ",currentValueInt];
            
            ageInCatYears.text = newValueString;
            
        }
        else {
            ageInCatYears.text=@"InValid Age";
        }
        
    }
    else {
        ageInCatYears.text=@"Please Enter the Age";
        
    }
}

    -(BOOL)textFieldShouldReturn:(UITextField *)UITextField
{
    
    [myHumanAge resignFirstResponder];
    
    return YES;
}
-(void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event
{
    NSLog(@"shake");
}

@end