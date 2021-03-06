//
//  ZXViewController.m
//  ZXCategories
//
//  Created by Apple on 07/21/2017.
//  Copyright (c) 2017 Apple. All rights reserved.
//

#import "ZXViewController.h"
#import <ZXCategories/NSString+ZXEmoji.h>
#import <ZXCategories/NSString+ZXSize.h>
#import <ZXCategories/UIIMAGE+ZXResize.h>
@interface ZXViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ZXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *image = [UIImage imageNamed:@"1.jpg"];
    UIImage *newImage = [image zx_resizedImage:CGSizeMake(100, 100) interpolationQuality:kCGInterpolationLow];
    self.imageView.image = newImage;
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
