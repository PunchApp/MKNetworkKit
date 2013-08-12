//
//  NSLocaleCustomFormats.m
//  Thinkr
//
//  Created by Dimas Gabriel on 8/12/13.
//  Copyright (c) 2013 Thinkr. All rights reserved.
//

#import "NSLocaleCustomFormats.h"

@implementation NSLocaleCustomFormats

+ (NSArray *) preferredLanguages{
    NSMutableArray *languages = [NSMutableArray arrayWithArray:[super preferredLanguages]];
    
    for (int i=0; i<languages.count; i++) {
        NSString *language = [languages objectAtIndex:i];
        
        if ([[language lowercaseString] isEqualToString:@"pt"]) [languages replaceObjectAtIndex:i withObject:@"pt-br"];
        else if ([[language lowercaseString] isEqual:@"pt-pt"]) [languages replaceObjectAtIndex:i withObject:@"pt"];
    }
    
    return languages;
}

@end
