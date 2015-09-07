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
        
        
        newsModel.fetchItems {
                dispatch_async(dispatch_get_main_queue()){
                    print("Internet connection OK")
                    self.tableView.reloadData()
                 }
            }
            
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "new")!)
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        
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
//        if(newsModel.dateForIndex(indexPath) == nil){
//        
//            
//            let alert:UIAlertController = UIAlertController(title: "Error...", message: "Somthng went wrong retry later", preferredStyle: UIAlertControllerStyle.Alert)
//            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
//            self.presentViewController(alert, animated: true, completion: nil)
//        }
    }
   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "news"){
            let vc = segue.destinationViewController as! NewsDetails
            if let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!{
                vc.detail = newsModel.filePathForIndex(indexPath)
            }
            
        }
        
    }
   

}
