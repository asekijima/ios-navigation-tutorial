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

//+(id) itemRandomico
//{
//    NSString *n = [NSString stringWithFormat:@"nome_%d", rand()%100];
//    NSString *s = [NSString stringWithFormat:@"sobrenome_%d", rand()%100];
//    NSString *e = [NSString stringWithFormat:@"endereco_%d", rand()%100];
//    NSString *t = [NSString stringWithFormat:@"telefone%d", rand()%100];
//    NSString *c = [NSString stringWithFormat:@"celular_%d", rand()%100];
//    
//    Item *it = [[Item alloc] initComNome:n  eSobrenome:s eEndereco:e eTelefone:t eCelular:c];
//    return it;
//}

@end
