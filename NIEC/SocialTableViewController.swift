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
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "new")!)
       // navigationController?.navigationBar.backgroundColor = UIColor.blueColor()
        super.viewDidLoad()
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton

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

  
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "SocialDetails"){
            let vc = segue.destinationViewController as! SocialDetailsViewController
            if let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!{
                vc.detailsTitle = social[indexPath.row]
                vc.urlText = socialUrl[indexPath.row]
                vc.localUrl = localUrl[indexPath.row]
            }
        
        }
        
       
    }

}
