//
//  QuizViewController.m
//  Quiz
//
//  Created by Rachel Johnson on 1/15/14.
//  Copyright (c) 2014 Rachel Johnson. All rights reserved.
//

#import "QuizViewController.h"

@implementation QuizViewController



- (void)viewDidLoad
{
    //_questionField = nil;
    [super viewDidLoad];
    currentQuestionIndex = 0;
    answers = [NSArray arrayWithObjects:@"14",@"Montpelier",@"Grapes",nil];
    questions = [NSArray arrayWithObjects:@"What is 7+7?", @"What is the capital of Vermont?", @"What is used to make Cognac?", nil];
}


-(IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    if(currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"displaying question: %@", question);
    [self.questionField setText:question];
    [_answerField setText:@"??"];
}

-(IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    
    [_answerField setText:answer];
}

@end
