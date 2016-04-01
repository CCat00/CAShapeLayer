//
//  ViewController.m
//  CAShapeLayer
//
//  Created by HanWei on 16/3/7.
//  Copyright © 2016年 AndLiSoft. All rights reserved.
//


#define kScreenHeight [UIScreen mainScreen].bounds.size.height
#define kScreenWidth [UIScreen mainScreen].bounds.size.width

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor darkGrayColor];
    
//    [self test];
//    return;
    
//    UIView *red = [[UIView alloc] initWithFrame:CGRectMake(kScreenWidth/2-20, kScreenHeight/2-100, 40, 200)];
//    red.backgroundColor = [UIColor redColor];
////    [self.view addSubview:red];
    
    
    CGFloat lineWidth1 = 2, lineWidth2 = 2;
    CGFloat raidus1 = 100, raidus2 = 30;
    
    CAShapeLayer *circle = [CAShapeLayer layer];
    circle.lineWidth = lineWidth1;
    circle.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(kScreenWidth/2, kScreenHeight/2) radius:raidus1 startAngle:0 endAngle:-2*M_PI clockwise:NO].CGPath;
    circle.strokeColor = [UIColor whiteColor].CGColor;
    circle.fillColor = [UIColor lightGrayColor].CGColor;
    [self.view.layer addSublayer:circle];
    
    
    //
    CAShapeLayer *circle2 = [CAShapeLayer layer];
    circle2.lineWidth = lineWidth2;
    circle2.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(kScreenWidth/2, kScreenHeight/2) radius:raidus2 startAngle:0 endAngle:-2*M_PI clockwise:NO].CGPath;
    circle2.strokeColor = [UIColor whiteColor].CGColor;
    circle2.fillColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:circle2];
    
    
    // 由于线宽的中间是和原半径重叠的所以需要计算，第三个的线宽和半径
    CGFloat lineWidth3, raidus3;
    lineWidth3 = raidus1+lineWidth1/2 - (raidus2+lineWidth2/2);
    raidus3 = lineWidth3/2 + raidus2+lineWidth2/2;
    
    CAShapeLayer *circle3 = [CAShapeLayer layer];
    circle3.lineWidth = lineWidth3;
    circle3.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(kScreenWidth/2, kScreenHeight/2) radius:raidus3 startAngle:0 endAngle:-2*M_PI clockwise:NO].CGPath;
#warning 这个star和end是逆时针方向。最右边为0。
    circle3.strokeStart = 0.25;
    circle3.strokeEnd = 0.5;
    circle3.strokeColor = [UIColor greenColor].CGColor;
    circle3.fillColor = [UIColor clearColor].CGColor;
    [self.view.layer addSublayer:circle3];
    

}

- (void)test
{
    CAShapeLayer *circle = [CAShapeLayer layer];
    circle.lineWidth = 50;
    circle.path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(kScreenWidth/2, kScreenHeight/2) radius:100 startAngle:0 endAngle:-2*M_PI clockwise:NO].CGPath;
    circle.strokeColor = [UIColor whiteColor].CGColor;
    circle.fillColor = [UIColor lightGrayColor].CGColor;
    [self.view.layer addSublayer:circle];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
