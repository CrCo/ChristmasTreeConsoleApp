//
//  ConsoleRenderer.h
//  
//
//  Created by Stephen Visser on 2015-09-07.
//
//

#import <Foundation/Foundation.h>
#import "Renderer.h"

@interface ConsoleRenderer : NSObject <Renderer>

- (id) initWithCharacter: (NSString *) character;

- (NSString *) stringForRow: (int) count;

@end
