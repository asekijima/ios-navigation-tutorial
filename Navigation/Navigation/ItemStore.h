//
//  ItemStore.h
//  Navigation
//
//  Created by Arturo Sekijima on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Item;

@interface ItemStore : NSObject
{
    NSArray *itens;
}

-(NSArray *) todosItens;

+(ItemStore *) getInstancia;

@end
