//
//  BBDTableViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 24/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class BBDTableViewController: UITableViewController {
    
    let bbd = ["BBDGEI Group Profile","Late Babu Banaras Das Ji","Dr. Akhilesh Das Gupta","Mrs. Alka Das Gupta"]
    let bbdimg = ["bbd","babu","akhilesh","alka"]
    let timgTitle = ["","(1912-1985)","LLB, MBA, Ph. D.","LLB, MBA"]
    let url = ["bbd","babu","akhilesh","alkadas"]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton

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
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bbd.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! BBDTableViewCell
    
        cell.bbdLabel.text = bbd[indexPath.row]
        cell.bbdImage.image = UIImage(named: bbdimg[indexPath.row])
        cell.bbdImage.layer.cornerRadius = cell.bbdImage.frame.size.width / 2
        cell.bbdImage.clipsToBounds = true
        cell.bbdImage.layer.borderWidth = 2.0
        cell.bbdImage.layer.borderColor = UIColor.whiteColor().CGColor
        if(indexPath.item % 2 == 0){
            cell.backgroundColor = UIColor.clearColor()
        }else{
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
        }
        return cell
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

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "BD"){
            let vc = segue.destinationViewController as! BBDViewController
            if let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!{
                vc.bTitle = bbd[indexPath.row]
                vc.bSubTitle = timgTitle[indexPath.row]
                vc.bImage = bbdimg[indexPath.row]
                vc.bURL = url[indexPath.row]
            }
        
    }
    }

}
