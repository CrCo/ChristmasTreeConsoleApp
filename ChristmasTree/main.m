//
//  main.m
//  ChristmasTree
//
//  Created by Stephen Visser on 2015-09-07.
//  Copyright (c) 2015 Stephen Visser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConsoleRenderer.h"
#import "Engine.h"

int fetchInput() {
    char str[10] = {0};
    printf("Enter desired number of rows: ");
    scanf("%s", str);
    return [[NSString stringWithUTF8String:str] intValue];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int rows = fetchInput();
        
        ConsoleRenderer *renderer = [[ConsoleRenderer alloc] initWithCharacter:@"*" andMaxColumnSize:[Engine countForRow:rows]];
        Engine *engine = [[Engine alloc] initWithRenderer:renderer];
        [engine renderToRow:rows];
    }
    return 0;
}