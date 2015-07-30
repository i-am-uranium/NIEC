//
//  ResourcesDetails.swift
//  NIEC
//
//  Created by Ravi Ranjan on 21/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class ResourcesDetails: UIViewController {

    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var scroller: UIScrollView!
    @IBOutlet weak var headerImage: UIImageView!
    
    
    var resourceTitle : String?
    var imageTitle: String?
    var stringDetails: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        widgetFunctions()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //func to avoid ambuguish
    func widgetFunctions(){
        label.text = resourceTitle
        self.title = resourceTitle
        textView.text = stringDetails
        image.image = UIImage(named: imageTitle!)
        headerImage.image = UIImage(named: imageTitle!)
        //making the image view circular and adding boarder for the small pic
        self.image.layer.cornerRadius = self.image.frame.size.width / 2
        self.image.clipsToBounds = true
        self.image.layer.borderWidth = 2.0
        self.image.layer.borderColor = UIColor.whiteColor().CGColor
        
        //making the image view circular and adding boarder for the header image
        self.headerImage.layer.cornerRadius = self.headerImage.frame.size.width / 2.4
        self.headerImage.clipsToBounds = true
        self.headerImage.layer.borderWidth = 5.0
        self.headerImage.layer.borderColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.25).CGColor
        
        //adding the scroller
        self.scroller.contentInset = UIEdgeInsetsMake(0, 0, 400, 0)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        
    }
    
    //making the scroll view scrollable
    override func viewWillLayoutSubviews() {
        self.scroller.frame = self.view.bounds
        self.scroller.contentSize.height = 400
        self.scroller.contentSize.width = 0
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
