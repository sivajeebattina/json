//
//  AboutViewController.m
//  JsonParsing
//
//  Created by pcs20 on 9/18/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "AboutViewController.h"
#import "AboutObject.h"
#import "NSString+size.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGRect scrollFrame=CGRectMake(0, 0, 100, 600);
    
    _scroll.frame=scrollFrame;
    
    
    NSString *aboutText=_aboutObject.about;
    
    UILabel *aboutLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 90, 300, 180)];
    
    aboutLabel.text = aboutText;
    aboutLabel.font=[UIFont fontWithName:@"Copperplate" size:20];
    
    
    CGSize expectedStringSize = [aboutText retrunStringsize:aboutText secondParameter:aboutLabel];
    
    
    
    aboutLabel.frame=[aboutText retrunLabelsize:aboutLabel secondParameter:expectedStringSize];
    
    
    
    _scroll.contentSize=CGSizeMake(100, aboutLabel.frame.size.height);
   
    aboutLabel.numberOfLines = 0;
    [aboutLabel sizeToFit];
    [self.scroll addSubview:aboutLabel];

    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
