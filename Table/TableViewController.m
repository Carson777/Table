//
//  TableViewController.m
//  Table
//
//  Created by Carson Capper on 6/21/16.
//  Copyright © 2016 Carson Capper. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Task * firstTask =[[Task alloc] init];
    Task * secondTask =[[Task alloc] init];
    Task * thirdTask = [[Task alloc] init];
    Task * fourthTask = [[Task alloc] init];
    Task * fifthTask = [[Task alloc] init];
    
    firstTask.taskName = @"Eat Breakfast";
    secondTask.taskName = @"Do Laundry";
    thirdTask.taskName= @"Get Groceries";
    fourthTask.taskName= @"Clean Room";
    fifthTask.taskName= @"fix Car";
    
    firstTask.taskLocation = @"Kitchen";
    secondTask.taskLocation = @"Laundry Room";
    thirdTask.taskLocation = @"Store";
    fourthTask.taskLocation = @"Room";
    fifthTask.taskLocation = @"Garage";
    
    _tasks = [NSMutableArray arrayWithObjects: firstTask, secondTask, thirdTask, fourthTask, fifthTask, nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _tasks.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TasksTableViewCell" forIndexPath:indexPath];
    
    // Configure the cell...
   
    Task *task = _tasks[indexPath.row];
    cell.textLabel.text = task.taskName;
    
    cell.detailTextLabel.text= task.taskLocation;
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
