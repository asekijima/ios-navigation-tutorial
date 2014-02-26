//
//  LetraAViewController.m
//  Navigation
//
//  Created by Vinicius Miana on 2/23/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "LetraAViewController.h"
#import "LetraBViewController.h"
#import "Item.h"
#import "ItemStore.h"

@implementation LetraAViewController

static int cont = 0;

-(void) viewDidLoad {
    [super viewDidLoad];
    
    Item *it = [[[ItemStore getInstancia]todosItens]objectAtIndex:cont];
    
    
    
    
    self.title = [it letra];
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    
    if(cont != 0){
        UIBarButtonItem *previous = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(previous:)];
        //UIBarButtonItem *previous = [[UIBarButtonItem alloc] initWithTitle:self.title style:UIBarButtonItemStylePlain target:self action:@selector(previous:)];
        //self.navigationItem.backBarButtonItem = previous;
        self.navigationItem.leftBarButtonItem = previous;
    }
    
    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao
     setTitle:@"Mostre uma palavra, uma figura e leia a palavra ao apertar um botao"
     forState:UIControlStateNormal];
    [botao sizeToFit];
    botao.center = self.view.center;
    
    [self.view addSubview:botao];
    
    
}

-(void) previous: (id) sender{
    
    [self.navigationController popViewControllerAnimated:YES];
    cont--;
    
}

-(void)next:(id)sender {
    cont++;
    LetraAViewController *proximo = [[LetraAViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
}




@end
