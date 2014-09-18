//
//  NSString+size.m
//  JsonParsing
//
//  Created by pcs20 on 9/18/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "NSString+size.h"

@implementation NSString (size)

-(CGSize)retrunStringsize:(NSString *)aboutText secondParameter:(UILabel *)aboutLabel{
    
    
    CGRect ExpectedLabelSize=[aboutText boundingRectWithSize:CGSizeMake(100, FLT_MAX)
                                                     options:NSStringDrawingUsesLineFragmentOrigin
                                                  attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:20]}
                                                     context:nil];
    
    
    
    
    return ExpectedLabelSize.size;
    
}

-(CGRect)retrunLabelsize:(UILabel *)aboutLabel secondParameter:(CGSize)expectedStringSize{

    CGRect newFrame = aboutLabel.frame;
    newFrame.size.height = expectedStringSize.height;
    
  
    return newFrame;
}



@end
