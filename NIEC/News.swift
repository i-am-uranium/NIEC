//
//  News.swift
//  NIEC
//
//  Created by Ravi Ranjan on 26/08/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class News: UITableViewController {
    
    var newsModel = NewsModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        networking()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "new")!)
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        
    }
    
    
    
    //MARK: Handle networking issue
    @IBAction func networking(){
        let status = Reach().connectionStatus()
        switch status {
        case .Unknown, .Offline:
            
            let alert  = UIAlertController(title: "Oops!", message: "data not available switch to Offline Mode OR hit retry", preferredStyle: UIAlertControllerStyle.Alert)
            let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel){
                UIAlertAction in
            }
            alert.addAction(cancel)
            alert.addAction(UIAlertAction(title: "Retry", style: UIAlertActionStyle.Default){
                UIAlertAction in
                self.viewDidAppear(true)
                
                })
            self.presentViewController(alert, animated: true, completion: nil)
            
            print("Not connected")
        case .Online(.WWAN):
            newsModel.fetchItems {
                dispatch_async(dispatch_get_main_queue()){
                    self.tableView.reloadData()
                }
            }
            print("Connected via WWAN")
        case .Online(.WiFi):
            newsModel.fetchItems {
                dispatch_async(dispatch_get_main_queue()){
                    self.tableView.reloadData()
                }
            }
            print("Connected via WiFi")
        }
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return newsModel.numberOfSections()
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsModel.numberOfItems(section)
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("news", forIndexPath: indexPath) as! NewsCell
        confugureCell(cell,atIndexPath: indexPath)
        
        if(indexPath.item % 2 == 0){
            
            cell.backgroundColor = UIColor.clearColor()
            
        }else{
            
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        }
        
        return cell
    }
    
    
    func confugureCell(cell:NewsCell,atIndexPath indexPath:NSIndexPath){
        cell.newsTitle.text = newsModel.titleForItemAtIndexPath(indexPath)
        cell.endDate.text = newsModel.dateForIndex(indexPath)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "news"){
            let vc = segue.destinationViewController as! NewsDetails
            if let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!{
                vc.detail = newsModel.filePathForIndex(indexPath)
            }
            
        }
        
    }
    
    
}
