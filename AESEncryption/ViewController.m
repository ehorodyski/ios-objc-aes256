//
//  ViewController.m
//  AESEncryption
//
//  Created by Eric J Horodyski on 2/25/19.
//  Copyright © 2019 Eric J Horodyski. All rights reserved.
//

#import "ViewController.h"
#import "NSString+AESCrypt.h"

@implementation ViewController

@synthesize decryptedTextView;
@synthesize encryptedTextView;

- (NSString*)getEncryptionKey {
    return [[NSBundle mainBundle] bundlePath];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.encryptedTextField addTarget:self action:@selector(onValueChanged:) forControlEvents:UIControlEventEditingChanged];
     
    self.decryptedTextView.text = @"";
    self.encryptedTextView.text = @"";
}

-(void)onValueChanged:(UITextField *)textField {
    NSString *toBeEncrypted = textField.text;
    
    NSString *encrypted = [toBeEncrypted AES256EncryptWithKey:[self getEncryptionKey]];
    NSString *decrypted = [encrypted AES256DecryptWithKey:[self getEncryptionKey]];
    self.encryptedTextView.text = encrypted;
    self.decryptedTextView.text = decrypted;
}

@end
