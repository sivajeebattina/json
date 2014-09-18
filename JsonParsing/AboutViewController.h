//
//  AboutViewController.h
//  JsonParsing
//
//  Created by pcs20 on 9/18/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AboutObject.h"

@interface AboutViewController : UIViewController

@property(nonatomic,strong)AboutObject *aboutObject;

@property(nonatomic,strong)IBOutlet UIScrollView *scroll;


@end
