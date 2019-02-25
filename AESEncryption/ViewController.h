//
//  ViewController.h
//  AESEncryption
//
//  Created by Eric J Horodyski on 2/25/19.
//  Copyright © 2019 Eric J Horodyski. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *encryptedTextField;
@property (strong, nonatomic) IBOutlet UITextView *encryptedTextView;
@property (strong, nonatomic) IBOutlet UITextView *decryptedTextView;

@end

