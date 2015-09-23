//
//  ViewController.m
//  PhotoDemo
//
//  Created by ljjun on 15/9/23.
//  Copyright © 2015年 ljjun. All rights reserved.
//

#import "ViewController.h"

//#import "ALAssetsLibrary+WJ.h"
//
//#import <Photos/Photos.h>
//
//#import "PHAsset+WJ.h"
//
//#import "ALAsset+WJ.h"

#import "WJPhotoTool.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [WJPhotoTool latestAsset:^(WJAsset * _Nullable asset) {
        [self.imageView setImage:asset.image];
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
