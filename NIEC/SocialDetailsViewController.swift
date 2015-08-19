//
//  SocialDetailsViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 24/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class SocialDetailsViewController: UIViewController {
    @IBOutlet weak var socialWebView: UIWebView!
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    var detailsTitle:String!
    var urlText:String!
    var localUrl:String!
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        super.viewDidLoad()
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        self.title = detailsTitle
        
        // loading the wbView
        let url = NSURL(string: urlText)
        let request = NSURLRequest(URL: url!)
        socialWebView.loadRequest(request)
        
        // loadfing the local html file
//        let myProjectBundle:NSBundle = NSBundle.mainBundle()
//        let filePath:String = myProjectBundle.pathForResource(localUrl, ofType: "html")!
//        let myUrl  = NSURL(string: filePath);
//        let myURLRequest : NSURLRequest = NSURLRequest(URL: myUrl!);
//        socialWebView.loadRequest(myURLRequest)
        
    }
    
    // controlling the background
    func configureWebView() {
        socialWebView.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.4)
        socialWebView.scalesPageToFit = true
        socialWebView.dataDetectorTypes = .All
    }

    
  
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func webViewDidStartLoad(_:UIWebView){
    actInd.startAnimating()
    }
   
    
    func webViewDidFinishLoad(_:UIWebView){
        actInd.stopAnimating()
        
        
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
