//
//  QuizViewController.h
//  Quiz
//
//  Created by Rachel Johnson on 1/15/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuizViewController : UIViewController{
    NSArray *questions;
    NSArray *answers;
    NSInteger currentQuestionIndex;
    }

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *questionField;
@property (weak, nonatomic) IBOutlet UILabel *answerField;

@end
