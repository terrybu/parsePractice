//
//  ParseStarterProjectViewController.m
//  ParseStarterProject
//
//  Copyright 2014 Parse, Inc. All rights reserved.
//

#import "ParseStarterProjectViewController.h"
#import <Parse/Parse.h>
#import "Joke.h"
#import "JokeParse.h"

@implementation ParseStarterProjectViewController

#pragma mark - UIViewController

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self fillFiveDummyJokesToParse];
    
}

- (void) fillFiveDummyJokesToParse {
    
    
    
    
    NSDateFormatter *myDateFormatter = [[NSDateFormatter alloc] init];
    [myDateFormatter setDateFormat:@"yyyy-MM-dd"];
    
    //first joke for parse
    [self createNewJokeParseOnServer:@"Keanu Reeves" bodyText:@"it was hard growing up coz there were not a lot of Asian American role-models on television. " score:@8 length:@70 writeDate:[myDateFormatter dateFromString:@"2012-10-25"]];
    
    
    //second dummy joke for Parse
    [self createNewJokeParseOnServer:@"late bloomer" bodyText:@"i was stupid as kid. I got horrible grades in school so mom called me a late-bloomer, but i never bloomed. i was just late toe verything." score: @10 length:@30 writeDate:[myDateFormatter dateFromString:@"2012-10-1"]];
    
    
    //third
    JokeParse *secondJokeParse = [JokeParse object];
    secondJokeParse.name = @"Golden Child";
    secondJokeParse.bodyText = @"this white lady confused me when she was like Jeremy lin is so good he's such a golden child";
    secondJokeParse.score = @7;
    secondJokeParse.length = @90;
    secondJokeParse.writeDate = [myDateFormatter dateFromString:@"2012-12-1"];
    [secondJokeParse saveInBackground];
    
    
    //fourth
    [self createNewJokeParseOnServer:@"Girlfriend" bodyText:@"i think it's weird when you've been friends with a girl for a long time .. and you don't really know how to tell her you want to ... coz you can't really bring that up in a casual conversation. You can't really be like hey Emily, remember that time we went camping?" score: @10 length:@30 writeDate:[myDateFormatter dateFromString:@"2012-10-1"]];
    
    //fifth
    [self createNewJokeParseOnServer:@"Chris Paul" bodyText:@"it's chris paul of the los angeles clippers" score:@6 length:@150 writeDate:[myDateFormatter dateFromString:@"2013-5-1"]];
}

- (void) createNewJokeParseOnServer: (NSString *) name bodyText: (NSString *) bodyText score: (NSNumber *) score length: (NSNumber *) length writeDate: (NSDate *) writeDate {
    
    JokeParse *newJokeParse = [JokeParse object];
    newJokeParse.name = name;
    newJokeParse.bodyText = bodyText;
    newJokeParse.score = score;
    newJokeParse.length = length;
    newJokeParse.writeDate = writeDate;
    
    [newJokeParse saveInBackground];
    
}




- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];

    // Release any cached data, images, etc that aren't in use.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
