//
//  TPOTableViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 27/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class TPOTableViewController: UITableViewController {
        let array = [("Mr. Aviag Kamal","Head - Training & Placement")]
    let core = [("Mr. Rajesh Yadav","IT"),("Ms. Tanvi Rustagi","CSE"),("Ms. Monica Dubey","EEE"),
        ("Ms. Shipra Varshney","MCA"),("Mr. Ram Prakash","MAE"),("Mr. Kamal Singh","ECE"),("Ms. Ashima Kapooer","MBA")]
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        if section == 0{
            return array.count
        }else{
            return core.count
        }
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! TPOTableViewCell
    
        if indexPath.section == 0 {
            let (kamal,head) = array[indexPath.row]
        
            cell.tpoTitle.text = kamal
            cell.tpoSubtitle.text = head

        }else{
            let (coreMember,coreSub) = core[indexPath.item]
            cell.tpoTitle.text = coreMember
            cell.tpoSubtitle.text = coreSub
        }
        
        
        if (indexPath.item % 2 == 0){
            cell.backgroundColor = UIColor.clearColor()
        }else{
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
        }
        
    cell.mail.layer.cornerRadius = cell.mail.frame.size.width / 2
        cell.mail.clipsToBounds = true
        return cell
    }
  
    
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //for table view header
        
        if section == 0{
            return "Training & Placement Officer"}
        else{
            return "Core Member"}
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
