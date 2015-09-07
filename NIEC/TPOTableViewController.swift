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
    
    let core = [
        ("Mr. Rajesh Yadav","IT"),
        ("Ms. Tanvi Rustagi","CSE"),
        ("Ms. Monica Dubey","EEE"),
        ("Ms. Shipra Varshney","MCA"),
        ("Mr. Ram Prakash","MAE"),
        ("Mr. Kamal Singh","ECE"),
        ("Ms. Ashima Kapooer","MBA")]
    
    let emailArray = [
        "rajesh.yadav@niecdelhi.ac.in",
        "tanvi.rustagi@niecdelhi.ac.in",
        "monika.dubey@niecdelhi.ac.in",
        "shipra.varshney@niecdelhi.ac.in",
        "jamuna.narayanan@niecdelhi.ac.in",
        "ram.prakash@niecdelhi.ac.in",
        "kamal.singh@niecdelhi.ac.in"]
    
    let sectionZeroUrl = ["tpo@niecdelhi.ac.in"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
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

        return cell
    }
  
    
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        //for table view header
        // heading for the table
        
        if section == 0{
            return "Training & Placement Officer"}
        else{
            return "Core Member"}
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "mailVIewIdenty")
        {
            let vc = segue.destinationViewController as! TPOMailViewController
            
                if let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!
                {
                    if(indexPath.section == 0)
                        {
                            
                            let email = sectionZeroUrl[indexPath.row] as String
                            let (username,_) = array[indexPath.row]
                            vc.userName = username
                            vc.email = email
                        }
                    else
                    {
                        let email = emailArray[indexPath.row] as String
                        let (_,usernameSectionTwo) = core[indexPath.row]
                        vc.userName = usernameSectionTwo
                        vc.email = email
                       
                    }
               }
                
        }
   }

}
