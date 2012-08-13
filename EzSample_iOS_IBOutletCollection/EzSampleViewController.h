//
//  EzSampleViewController.h
//  EzSample_iOS_IBOutletCollection
//
//  Created by 熊谷 友宏 on 2012/08/13.
//  Copyright (c) 2012年 熊谷 友宏. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EzSampleViewController : UIViewController

@property (nonatomic,readwrite,strong) IBOutletCollection(UILabel) NSArray* labels;

- (IBAction)numbering:(UIButton*)sender;
- (IBAction)numberingByTag:(UIButton*)sender;
- (IBAction)numberingByLocationX:(UIButton*)sender;
- (IBAction)numberingByLocationY:(UIButton*)sender;

- (void)numberingLabelsInOrder:(NSArray*)labels;

@end
