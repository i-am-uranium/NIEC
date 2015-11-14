//
//  NewsModel.swift
//  NIEC
//
//  Created by Ravi Ranjan on 26/08/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import Foundation


class NewsModel {
    var titles = [String]()
    var endDat = [String]()
    var eventDet = [String]()
    
    let urlString = "http://www.niecdelhi.ac.in/api/events.php"
    
    func fetchItems (success:() -> ()){
        let url = NSURL(string: urlString)
        
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        let task = session.dataTaskWithURL(url!) {(data, response, error) in
            do {
                
                let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as! NSArray
                
                self.titles = json.valueForKeyPath("event_title") as! [String]
                
                self.endDat = json.valueForKey("event_end_date") as! [String]
                
                self.eventDet = json.valueForKey("event_full") as! [String]
                
                print(self.titles + self.endDat + self.eventDet)
                success()
                
            }catch{
                print(error)
                print( "Something went wrong!")
            }
        }
        task.resume()
    }
    
    func numberOfSections() -> Int {
        return 1
        
    }
    func numberOfItems(section:Int) ->Int{
        return titles.count
    }
    
    func titleForItemAtIndexPath(indexPath:NSIndexPath) ->String{
        return titles[indexPath.row]
    }
    
    func dateForIndex(indexPath:NSIndexPath) ->String
    {
        return endDat[indexPath.row]
    }
    func filePathForIndex(indexPath:NSIndexPath) ->String
    {
        return eventDet[indexPath.row]
    }
    
}