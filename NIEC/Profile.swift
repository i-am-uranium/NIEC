//
//  Profile.swift
//  NIEC
//
//  Created by Ravi Ranjan on 22/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class Profile: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    var array : [String] = []
    
    
    //another way of passing the data from one segue to another segue
    var imageName :AnyObject?{
        get{
        return NSUserDefaults.standardUserDefaults().objectForKey("imageName")
        }
        set{
        NSUserDefaults.standardUserDefaults().setObject(newValue!, forKey: "imageName")
            NSUserDefaults.standardUserDefaults().synchronize()
        }
    }

    override func viewDidLoad() {
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        self.title = "Profile"
        array = ["PortImage1","PortImage2","PortImage3","PortImage4","PortImage5","PortImage6","PortImage7","PortImage1","PortImage2","PortImage3","PortImage4","PortImage5","PortImage6","PortImage7","PortImage1","PortImage2","PortImage3","PortImage4","PortImage5","PortImage6","PortImage7","PortImage1","PortImage2","PortImage3","PortImage4","PortImage5","PortImage6","PortImage7",]
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        imageName = array[indexPath.row]
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! CollectionViewCell
        cell.imageView.image = UIImage(named: array[indexPath.row])
        cell.imageView.layer.cornerRadius = cell.imageView.frame.size.width / 2
        cell.imageView.clipsToBounds = true
        cell.imageView.layer.borderWidth = 2.0
        cell.imageView.layer.borderColor = UIColor.whiteColor().CGColor
        return cell
        
    }
    
    
    
    
    

}
