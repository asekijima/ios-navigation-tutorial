//
//  Item.h
//  Navigation
//
//  Created by Arturo Sekijima on 25/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject
{
    NSString *letra;
    NSString *nome;
    UIImage *foto;
}

@property NSString *letra;
@property NSString *nome;
@property UIImage *foto;

-(id)initComLetra:(NSString *)l eNome:(NSString *)n eImagem:(UIImage *)i;

//+(id) itemRandomico;

@end
