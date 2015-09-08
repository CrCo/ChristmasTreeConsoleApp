//
//  Engine.m
//  
//
//  Created by Stephen Visser on 2015-09-07.
//
//

#import "Engine.h"
#import "Renderer.h"

@interface Engine()

@property id<Renderer> renderer;

@end

@implementation Engine

+ (int) countForRow:(int) row {
    return (row - 1) * 2 + 1;
}

- (id) initWithRenderer:(id<Renderer>)renderer {
    self = [super init];
    if (self) {
        self.renderer = renderer;
    }
    return self;
}

- (void) renderToRow: (int) row {
    for (int i = 1; i <= row; i++) {
        [self.renderer renderLine:[Engine countForRow:i]];
    }
}

@end
