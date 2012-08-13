//
//  EzSampleViewController.m
//  EzSample_iOS_IBOutletCollection
//
//  Created by 熊谷 友宏 on 2012/08/13.
//  Copyright (c) 2012年 熊谷 友宏. All rights reserved.
//

#import "EzSampleViewController.h"

@implementation EzSampleViewController

- (void)numberingLabelsInOrder:(NSArray *)labels
{
    // 渡された順番通りに番号を振ります。
    for (NSUInteger i = 0; i < labels.count; i++)
    {
        UILabel* label = [labels objectAtIndex:i];
        
        label.text = [[NSString alloc] initWithFormat:@"%d", i + 1];
    }
}

- (void)numbering:(UIButton *)sender
{
    // IBOutletCollection が保持している順番で番号を振ります。
    NSArray* labels = self.labels;
    
    [self numberingLabelsInOrder:labels];
}

- (void)numberingByTag:(UIButton *)sender
{
    // IBOutletCollection のラベルを Tag 順に並べ替えて番号を振ります。
    NSArray* labels = [self.labels sortedArrayUsingComparator:
                       ^NSComparisonResult(UILabel* obj1, UILabel* obj2)
                       {
                           NSComparisonResult result;
                           
                           if (obj1.tag == obj2.tag)
                           {
                               result = NSOrderedSame;
                           }
                           else
                           {
                               result = (obj1.tag < obj2.tag ? NSOrderedAscending : NSOrderedDescending);
                           }
                           
                           return result;
                       }
                       ];
    
    [self numberingLabelsInOrder:labels];
}

- (void)numberingByLocationX:(UIButton *)sender
{
    // IBOutletCollection のラベルを X 座標順に並べ替えて番号を振ります。
    NSArray* labels = [self.labels sortedArrayUsingComparator:
                       ^NSComparisonResult(UILabel* obj1, UILabel* obj2)
                       {
                           NSComparisonResult result;
                           
                           CGFloat x1 = obj1.frame.origin.x;
                           CGFloat x2 = obj2.frame.origin.x;
                           
                           if (x1 == x2)
                           {
                               result = NSOrderedSame;
                           }
                           else
                           {
                               result = (x1 < x2 ? NSOrderedAscending : NSOrderedDescending);
                           }
                           
                           return result;
                       }
                       ];
    
    [self numberingLabelsInOrder:labels];
}

- (void)numberingByLocationY:(UIButton *)sender
{
    // IBOutletCollection のラベルを Y 座標順に並べ替えて番号を振ります。
    NSArray* labels = [self.labels sortedArrayUsingComparator:
                       ^NSComparisonResult(UILabel* obj1, UILabel* obj2)
                       {
                           NSComparisonResult result;
                           
                           CGFloat y1 = obj1.frame.origin.y;
                           CGFloat y2 = obj2.frame.origin.y;
                           
                           if (y1 == y2)
                           {
                               result = NSOrderedSame;
                           }
                           else
                           {
                               result = (y1 < y2 ? NSOrderedAscending : NSOrderedDescending);
                           }
                           
                           return result;
                       }
                       ];
    
    [self numberingLabelsInOrder:labels];
}

@end
