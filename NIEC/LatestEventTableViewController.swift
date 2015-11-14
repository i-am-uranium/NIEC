//
//  LatestEventTableViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 25/08/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class LatestEventTableViewController: UITableViewController {

    let apiModel = ApiDataModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "new")!)
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        apiModel.fetchItems {
            dispatch_async(dispatch_get_main_queue()){
                self.tableView.reloadData()
            }
        }

    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return apiModel.numberOfSections()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return apiModel.numberOfItems(section)
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("latestevents", forIndexPath: indexPath) as! LatestEventTableViewCell

        if(indexPath.item % 2 == 0)
        {
            cell.backgroundColor = UIColor.clearColor()
        }else{
            
            cell.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.3)
        
        }
        confugureCell(cell,atIndexPath: indexPath)

        return cell
    }

    
    func confugureCell(cell:LatestEventTableViewCell,atIndexPath indexPath:NSIndexPath){
       cell.eventTitle.text = apiModel.titleForItemAtIndexPath(indexPath)
        cell.eventCatogary.text = apiModel.catogoryForIndex(indexPath)
        cell.evetnDate.text = apiModel.dateForIndex(indexPath)
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        if (segue.identifier == "notice"){
            let vc = segue.destinationViewController as! NoticeDetailsViewController
            if let indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow!{
                vc.noticeUrl = apiModel.filePathForIndex(indexPath)
            }
            
        }
        
        
    }
    

}
