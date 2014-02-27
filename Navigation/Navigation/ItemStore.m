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
    Item *a = [[Item alloc] initComLetra:@"A" eNome:@"Abilio" eImagem:[UIImage imageNamed:@"Abilio"]];
    Item *b = [[Item alloc] initComLetra:@"B" eNome:@"Bia" eImagem:[UIImage imageNamed:@"Bia"]];
    Item *c = [[Item alloc] initComLetra:@"C" eNome:@"Calebe" eImagem:[UIImage imageNamed:@"Calebe"]];
    Item *d = [[Item alloc] initComLetra:@"D" eNome:@"Dani" eImagem:[UIImage imageNamed:@"Dani"]];
    Item *e = [[Item alloc] initComLetra:@"E" eNome:@"Eduardo" eImagem:[UIImage imageNamed:@"Eduardo"]];
    Item *f = [[Item alloc] initComLetra:@"F" eNome:@"Fabio" eImagem:[UIImage imageNamed:@"Fabio"]];
    Item *g = [[Item alloc] initComLetra:@"G" eNome:@"Gaston" eImagem:[UIImage imageNamed:@"Gaston"]];
    Item *i = [[Item alloc] initComLetra:@"I" eNome:@"Ilana" eImagem:[UIImage imageNamed:@"Ilana"]];
    Item *j = [[Item alloc] initComLetra:@"J" eNome:@"Jojoca" eImagem:[UIImage imageNamed:@"Joaquim"]];
    Item *k = [[Item alloc] initComLetra:@"K" eNome:@"Kassya" eImagem:[UIImage imageNamed:@"Kassya"]];
    Item *l = [[Item alloc] initComLetra:@"L" eNome:@"Luciano" eImagem:[UIImage imageNamed:@"Luciano"]];
    Item *m = [[Item alloc] initComLetra:@"M" eNome:@"Maria" eImagem:[UIImage imageNamed:@"Maria"]];
    Item *n = [[Item alloc] initComLetra:@"N" eNome:@"Nizam" eImagem:[UIImage imageNamed:@"Nizam"]];
    Item *o = [[Item alloc] initComLetra:@"O" eNome:@"Osny" eImagem:[UIImage imageNamed:@"Osny"]];
    Item *p = [[Item alloc] initComLetra:@"P" eNome:@"Paulino" eImagem:[UIImage imageNamed:@"Paulino"]];
    Item *r = [[Item alloc] initComLetra:@"R" eNome:@"Regiane" eImagem:[UIImage imageNamed:@"Regiane"]];
    Item *s = [[Item alloc] initComLetra:@"S" eNome:@"Sheila" eImagem:[UIImage imageNamed:@"Sheila"]];
    Item *t = [[Item alloc] initComLetra:@"T" eNome:@"Takato" eImagem:[UIImage imageNamed:@"Takato"]];
    Item *v = [[Item alloc] initComLetra:@"V" eNome:@"Vilar" eImagem:[UIImage imageNamed:@"Vilar"]];
    NSArray *temp = [NSArray arrayWithObjects:a,b,c,d,e,f,g,i,j,k,l,m,n,o,p,r,s,t,v, nil];
    return temp;
}

@end
