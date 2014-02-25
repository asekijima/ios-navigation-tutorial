//
//  ItemStore.m
//  Navigation
//
//  Created by Arturo Sekijima on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "ItemStore.h"
#import "Item.h"

@implementation ItemStore

-(id) init
{
    self = [super init];
    itens = nil;
    
    if(!itens)
    {
        itens = [ItemStore criarArray];
    }
    return self;
}

+(id) allocWithZone:(struct _NSZone *)zone
{
    return [self getInstancia];
}


+(ItemStore *) getInstancia
{
    static ItemStore *instancia = Nil;
    if(!instancia)
    {
        instancia = [[super allocWithZone:NULL] init];
    }
    return instancia;
}

-(NSArray *) todosItens
{
    return itens;
}

+ (NSArray *) criarArray
{
    Item *a = [[Item alloc] initComLetra:@"A" eNome:@"Abacate" eImagem:nil];
    Item *b = [[Item alloc] initComLetra:@"B" eNome:@"Banana" eImagem:nil];
    Item *c = [[Item alloc] initComLetra:@"C" eNome:@"Caju" eImagem:nil];
    NSArray *temp = [NSArray arrayWithObjects:a,b,c, nil];
    return temp;
}

@end
