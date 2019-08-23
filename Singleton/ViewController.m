//
//  ViewController.m
//  Singleton
//
//  Created by xiaojia.xiao on 2019/7/16.
//  Copyright © 2019 xiaojia.xiao. All rights reserved.
//

#import "ViewController.h"
#import "NetworkManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NetworkManager *manager = [NetworkManager sharemManager];
//    NetworkManager *manager1 = [manager copy];
//    NetworkManager *manager2 = [manager mutableCopy];
    NetworkManager *manager3 = [[NetworkManager alloc]init];
    NetworkManager *manager4 = [NetworkManager new];
    NetworkManager *manager5 = [manager copy];
    NetworkManager *manager6 = [manager mutableCopy];
//    NetworkManager *manager7 = [manager3 copy];
//    NetworkManager *manager8 = [manager3 mutableCopy];
//    NetworkManager *manager9 = [];
    
    NSLog(@"manager - %@",manager);
//    NSLog(@"manager1 - %@",manager1);
//    NSLog(@"manager2 - %@",manager2);
    NSLog(@"manager3 - %@",manager3);
    NSLog(@"manager4 - %@",manager4);
    NSLog(@"manager5 - %@",manager5);
    NSLog(@"manager6 - %@",manager6);
//    NSLog(@"manager7 - %@",manager7);
//    NSLog(@"manager8 - %@",manager8);
//    NSLog(@"manager9 - %@",manager9);
    
   
    
}


@end
