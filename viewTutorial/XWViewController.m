//
//  XWViewController.m
//  viewTutorial
//
//  Created by 王小天 on 14-9-10.
//  Copyright (c) 2014年 Xiaotian Wang. All rights reserved.
//

#import "XWGrid.h"
#import "XWViewController.h"

@interface XWViewController () {
  UIButton* _button;
  UIView* _gridView;
}

@end

@implementation XWViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  
  self.view.backgroundColor = [UIColor whiteColor];
  
  // create grid frame
  CGRect frame = self.view.frame;
  CGFloat x = CGRectGetWidth(frame)*0.1;
  CGFloat y = CGRectGetHeight(frame)*0.1;
  CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*0.80;
  
  CGRect gridFrame = CGRectMake(x, y, size, size);
  
  // create grid view
  _gridView = [[XWGrid alloc] initWithFrame:gridFrame];
  _gridView.backgroundColor = [UIColor blackColor];
  [self.view addSubview:_gridView];
  
  // create button
  CGFloat buttonSize = size / 5.0;
  CGRect buttonFrame = CGRectMake(0, 0, buttonSize, buttonSize);
  _button = [[UIButton alloc] initWithFrame:buttonFrame];
  _button.backgroundColor = [UIColor redColor];
  [_gridView addSubview:_button];
  
  // create target for button
  [_button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender
{
  NSLog(@"You pressed the button!");
}

@end
