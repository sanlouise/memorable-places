//
//  TableViewController.swift
//  Memorable Places 2
//
//  Created by Sandra Adams-Hallie on Mar/2/16.
//  Copyright © 2016 Sandra Adams-Hallie. All rights reserved.
//

import UIKit

// An array containing a set of dictionaries, each are a pair of strings.
var places = [Dictionary<String,String>()]

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
      // Create an example place to show when no places have been added yet. We would have put places.count == 0, like usual, but we cannot create an empty array outside of the TableViewController. We need to add some data in there. Therefore, it should be bigger than 1 which equals the example array that we have made up already.
        
        if places.count == 1 {
            
            places.removeAtIndex(0)
            
            places.append(["name":"Taj Mahal","lat":"27.175277","lon":"78.042128"])
            
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return places.count
    }


    // Uncomment this
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)

        cell.textLabel?.text = places[indexPath.row]["name"]
        
        return cell

    }
    
    // Add this to ensure the table view is updated after someone pinned a place!
    
    override func viewWillAppear(animated: Bool) {
        tableView.reloadData()
        
    }


}
