//
//  MainViewController.m
//  Navigation
//
//  Created by Arturo Sekijima on 27/02/14.
//  Copyright (c) 2014 Vinicius Miana. All rights reserved.
//

#import "MainViewController.h"
#import "ItemStore.h"
#import "Item.h"
#import <AVFoundation/AVFoundation.h>

@interface MainViewController ()

@end

@implementation MainViewController

static int cont = 0;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) viewDidLoad {
    [super viewDidLoad];
    
    Item *it = [[[ItemStore getInstancia]todosItens]objectAtIndex:cont];
    
    int tam = (int) [[[ItemStore getInstancia]todosItens]count];
    
    self.title = [it letra];
    self.texto.text = [it nome];
    [_imagem setImage: [it foto]];
    
    if (cont < --tam) {
        UIBarButtonItem *next = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
        self.navigationItem.rightBarButtonItem=next;
    }
    
    if(cont != 0){
        UIBarButtonItem *previous = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(previous:)];
        //UIBarButtonItem *previous = [[UIBarButtonItem alloc] initWithTitle:self.title style:UIBarButtonItemStylePlain target:self action:@selector(previous:)];
        //self.navigationItem.backBarButtonItem = previous;
        self.navigationItem.leftBarButtonItem = previous;
    }
    
    _imagem.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(falar:)];
    
    tap.delegate = self;
    [_imagem addGestureRecognizer:tap];
    
}

-(void) previous: (id) sender{
    
    [self.navigationController popViewControllerAnimated:YES];
    cont--;
    
}

-(void)next:(id)sender {
    cont++;
    MainViewController *proximo = [[MainViewController alloc]
                                     initWithNibName:nil
                                     bundle:NULL];
    [self.navigationController pushViewController:proximo
                                         animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) falar:(id)sender{
    AVSpeechSynthesisVoice *voz = [AVSpeechSynthesisVoice voiceWithLanguage:@"PT-BR"];
    AVSpeechUtterance *lendo = [[AVSpeechUtterance alloc]initWithString:self.texto.text];
    
    lendo.rate = AVSpeechUtteranceMinimumSpeechRate;
    
    AVSpeechSynthesizer *falando = [[AVSpeechSynthesizer alloc]init];
    
    [lendo setVoice:voz];
    
    [falando speakUtterance:lendo];
}

//- (IBAction)botao:(id)sender {
//    AVSpeechSynthesisVoice *voz = [AVSpeechSynthesisVoice voiceWithLanguage:@"PT-BR"];
//    AVSpeechUtterance *lendo = [[AVSpeechUtterance alloc]initWithString:self.texto.text];
//    
//    lendo.rate = AVSpeechUtteranceMinimumSpeechRate;
//    
//    AVSpeechSynthesizer *falando = [[AVSpeechSynthesizer alloc]init];
//    
//    [lendo setVoice:voz];
//    
//    [falando speakUtterance:lendo];
//    
//    
//}
@end
