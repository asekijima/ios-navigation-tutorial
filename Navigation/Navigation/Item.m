//
//  Item.m
//  Navigation
//
//  Created by Arturo Sekijima on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "Item.h"

@implementation Item

@synthesize letra, nome, foto;


-(id) initComLetra:(NSString *)l eNome:(NSString *)n eImagem:(UIImage *)i
{
    self = [super init];
    
    if (self)
    {
        letra = l;
        nome = n;
        foto = i;
    }
    return self;
}

@end
