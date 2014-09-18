//
//  NSString+size.h
//  JsonParsing
//
//  Created by pcs20 on 9/18/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (size)

-(CGSize)retrunStringsize:(NSString *)aboutText secondParameter:(UILabel *)aboutLabel;

-(CGRect)retrunLabelsize:(UILabel *)aboutLabel secondParameter:(CGSize)expectedStringSize;



@end
