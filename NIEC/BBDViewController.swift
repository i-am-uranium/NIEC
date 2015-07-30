//
//  BBDViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 24/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class BBDViewController: UIViewController {

    @IBOutlet weak var bWebVIew: UIWebView!
    @IBOutlet weak var mainSubTitle: UILabel!
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var BBDIMAGE: UIImageView!
    var bTitle:String!
    var bSubTitle:String!
    var bImage:String!
    var bURL:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    
    }
    func initialize(){
        self.title = bTitle
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        self.mainTitle.text = bTitle
        self.mainSubTitle.text = bSubTitle
        self.BBDIMAGE.image = UIImage(named: bImage)
        self.BBDIMAGE.layer.cornerRadius = self.BBDIMAGE.frame.size.width / 2
        self.BBDIMAGE.clipsToBounds = true
        self.BBDIMAGE.layer.borderWidth = 2.0
        self.BBDIMAGE.layer.borderColor = UIColor.whiteColor().CGColor
        let myProjectBundle:NSBundle = NSBundle.mainBundle()
        let filePath:String = myProjectBundle.pathForResource(bURL, ofType: "html")!
        let myUrl  = NSURL(string: filePath);
        let myURLRequest : NSURLRequest = NSURLRequest(URL: myUrl!);
        bWebVIew.loadRequest(myURLRequest)
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

}
