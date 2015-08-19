//
//  SocialTableViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 24/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class SocialTableViewController: UITableViewController {

    let social = ["Facebook","Google","LinkedIn","Twitter","Website","Youtube"]
    let socialUrl = [
        "http://www.facebook.com/niecnewdelhi",
        "http://www.google.com",
        "http://www.linkedin.com",
        "https://twitter.com/niec_nd/",
        "http://www.niecdelhi.ac.in",
        "http://www.youtube.com"]
    let localUrl = ["alkadas","alkadas","alkadas","alkadas","alkadas","alkadas"]
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "niec_back")!)
       // navigationController?.navigationBar.backgroundColor = UIColor.blueColor()
        super.viewDidLoad()
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
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return social.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! SocialTableViewCell
        cell.socialLabel.text = social[indexPath.row]
        cell.socialImage.image = UIImage(named: social[indexPath.row])
        cell.socialImage.layer.cornerRadius = cell.socialImage.frame.size.width / 2
        cell.socialImage.clipsToBounds = true
        cell.socialImage.layer.borderWidth = 2.0
        cell.socialImage.layer.borderColor = UIColor.whiteColor().colorWithAlphaComponent(0.2).CGColor
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
        // Get the new view controller using segue.destinationViewController.
        if (segue.identifier == "SocialDetails"){
            let vc = segue.destinationViewController as! SocialDetailsViewController
            if let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!{
                vc.detailsTitle = social[indexPath.row]
                vc.urlText = socialUrl[indexPath.row]
                vc.localUrl = localUrl[indexPath.row]
            }
        
        }
        
        
        
        
        
        
        
        // Pass the selected object to the new view controller.
    }

}
