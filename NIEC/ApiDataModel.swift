//
//  ApiDataModel.swift
//  NIEC
//
//  Created by Ravi Ranjan on 25/08/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import Foundation

class ApiDataModel {
    var titles = [String]()
    var cat = [String]()
    var dat = [String]()
    var filePath = [String]()
    let urlString = "http://www.niecdelhi.ac.in/api/notices.php"
    func fetchItems (success:() -> ()){
        let url = NSURL(string: urlString)
        
        let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
        let task = session.dataTaskWithURL(url!) {(data, response, error) in
            do {
                let json = try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as! NSArray
                
                self.titles = json.valueForKeyPath("title") as! [String]
                self.cat = json.valueForKey("category") as! [String]
                self.dat = json.valueForKey("release_date") as! [String]
                self.filePath = json.valueForKey("file_path") as! [String]
                print(self.titles + self.cat + self.dat + self.filePath)
                
                success()
            }catch{
                print(error)
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
    func catogoryForIndex(indexPath:NSIndexPath) ->String
    {
        return cat[indexPath.row]
    }
    func dateForIndex(indexPath:NSIndexPath) ->String
    {
        return dat[indexPath.row]
    }
    func filePathForIndex(indexPath:NSIndexPath) ->String
    {
        return filePath[indexPath.row]
    }
    
}

