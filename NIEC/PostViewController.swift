//
//  PostViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 09/09/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit
import Parse

class PostViewController:UIViewController,UITableViewDelegate{
    
    @IBOutlet var tableview: UITableView!
    @IBOutlet var postButton: UIButton!
    @IBOutlet var writePostTextVIew: UITextView!
    var timelineData:NSMutableArray = NSMutableArray()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Latest Post"
        self.view.backgroundColor = UIColor(netHex: 0x211c32)
        
    }

    override func viewDidAppear(animated: Bool) {
        loadData()
    }

   @IBAction func loadData(){
        timelineData.removeAllObjects()
        let findtimelineData:PFQuery = PFQuery(className:"Posts")
        findtimelineData.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]?, error: NSError?) -> Void in
            
            if error == nil {
                // The find succeeded.
                print("Successfully retrieved \(objects!.count) data")
                // Do something with the found objects
                if let objects = objects as? [PFObject] {
                    for object in objects {
                        self.timelineData.addObject(object)
                        print(object.objectId)
                    }
                }
                
                let array:NSArray = self.timelineData.reverseObjectEnumerator().allObjects
                self.timelineData = NSMutableArray(array:array)
                self.tableview.reloadData()
                
                
            } else {
                // Log details of the failure
                print("Error: \(error!) \(error!.userInfo)")
            }
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: - Table view data source
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return timelineData.count
    }
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("PostView", forIndexPath: indexPath) as! PostViewCell
        
        
        if(indexPath.item % 2 == 0)
        {
            cell.backgroundColor = UIColor.clearColor()
        }else{
            
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
            
        }
        cell.user.alpha = 0.0
        cell.createdAt.alpha = 0.0
        cell.postMessage.alpha = 0.0
    
        let object:PFObject = self.timelineData.objectAtIndex(indexPath.row) as! PFObject
        cell.postMessage.text = object.objectForKey("post") as! String
        
        
        let dateFormat:NSDateFormatter = NSDateFormatter()
        dateFormat.dateFormat = "yyyy-mm-dd HH:mm"
        cell.createdAt.text = dateFormat.stringFromDate(object.createdAt!)
        
        
        let findusername:PFQuery = PFUser.query()!
        if let userObjec: PFObject = object.objectForKey("user") as? PFObject{
        
            findusername.whereKey("objectId", equalTo:userObjec.objectId!)
            findusername.findObjectsInBackgroundWithBlock {
                (objects: [AnyObject]?, error: NSError?) -> Void in
                if error == nil {
                    if let users : [PFUser] = objects as? [PFUser] where users.count > 0 {
                        let USER:PFUser = users.last!
                        cell.user.text = USER.username
                        UIView.animateWithDuration(0.1, animations: {
                        
                            cell.user.alpha = 1.0
                            cell.createdAt.alpha = 1.0
                            cell.postMessage.alpha = 1.0
                        })
                    }
                  } else {
                
                }
            
            }
        }
        
        return cell
    }
    
}
