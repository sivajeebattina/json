//
//  CompanyTableViewController.m
//  JsonParsing
//
//  Created by pcs20 on 9/18/14.
//  Copyright (c) 2014 Paradigmcreatives. All rights reserved.
//

#import "CompanyTableViewController.h"
#import "AboutObject.h"
#import "AboutViewController.h"


@interface CompanyTableViewController ()

@end

@implementation CompanyTableViewController
{
    NSMutableArray *aboutData;
    NSMutableArray *companyNames;

}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    aboutData=[[NSMutableArray alloc] init];
    companyNames=[[NSMutableArray alloc] init];
    
    NSError *error=nil;
    
    NSURL *JsonUrl=[[NSBundle mainBundle] URLForResource:@"generated" withExtension:@"json"];
    NSString *jsonString=[NSString stringWithContentsOfURL:JsonUrl encoding:NSUTF8StringEncoding error:&error];
    
    NSData *jsonData=[jsonString dataUsingEncoding:NSUTF8StringEncoding];
    id jsonObject=[NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];
    
    //NSLog(@"jsonData: %@",jsonObject);
    NSMutableArray *collectData=[[NSMutableArray alloc] init];
    
   
    
    
    collectData=(NSMutableArray *)jsonObject;
    //NSMutableDictionary *dict=[[NSMutableDictionary alloc] init];
    
    
    for (NSDictionary *dict in collectData) {
        
        AboutObject *about=[[AboutObject alloc] init];
        about.about=[dict objectForKey:@"about"];
        
        [aboutData addObject:about];
        
        [companyNames addObject:[dict objectForKey:@"company"]];
        
    }
    
    
 
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return companyNames.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"companyNames" forIndexPath:indexPath];
    
    // Configure the cell...
    
    cell.textLabel.text=[companyNames objectAtIndex:indexPath.row];
    
    return cell;
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    if ([[segue identifier] isEqualToString:@"gotoAbout"]) {
        AboutViewController *aboutViewController=[segue destinationViewController];
        
        NSIndexPath *selectedIndexpath=[self.tableView indexPathForSelectedRow];
        
        aboutViewController.aboutObject=[aboutData objectAtIndex:selectedIndexpath.row];
       
    }
}


@end
