//
//  ConsoleRenderer.m
//  
//
//  Created by Stephen Visser on 2015-09-07.
//
//

#import "ConsoleRenderer.h"

@interface ConsoleRenderer()

@property NSString *character;
@property int maxColumnSize;

@end

@implementation ConsoleRenderer

- (id) initWithCharacter: (NSString *) character andMaxColumnSize: (int) columnSize {
    self = [super init];
    if (self) {
        self.character = character;
        self.maxColumnSize = columnSize;
    }
    return self;
}

- (NSString *)stringForRow:(int)count {
    int spacesRequired = (self.maxColumnSize - count) / 2;
    
    NSString *str  = [[[NSString alloc] init] stringByPaddingToLength:spacesRequired withString:@" " startingAtIndex:0];
    return [str stringByPaddingToLength:count + spacesRequired withString:self.character startingAtIndex:0];
;
}

- (void) renderLine:(int)count {
    NSLog(@"%@", [self stringForRow:count]);
}

@end
