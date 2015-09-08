//
//  Engine.h
//  
//
//  Created by Stephen Visser on 2015-09-07.
//
//

#import <Foundation/Foundation.h>
#import "Renderer.h"

@interface Engine : NSObject

+ (int) countForRow:(int) row;

- (id) initWithRenderer: (NSObject<Renderer> *) renderer;

- (void) renderToRow: (int) row;

@end
