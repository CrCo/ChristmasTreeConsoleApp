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

@end

@implementation ConsoleRenderer

- (id) initWithCharacter: (NSString *) character {
    self = [super init];
    if (self) {
        self.character = character;
    }
    return self;
}

- (NSString *)stringForRow:(int)count {
    return [[[NSString alloc] init] stringByPaddingToLength:count withString:self.character startingAtIndex:0];
}

- (void) renderLine:(int)count {
    NSLog(@"%@", [self stringForRow:count]);
}

@end
