//
//  NoticeDetailsViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 25/08/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class NoticeDetailsViewController: UIViewController {
    
    @IBOutlet weak var noticeWebView: UIWebView!
    
    @IBOutlet weak var actInd: UIActivityIndicatorView!
    
    var detailsTitle:String!
    var noticeUrl:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureWebView()
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        
        let url = NSURL(string: "http://www.niecdelhi.ac.in" + noticeUrl)
        if url != nil {
            let request = NSURLRequest(URL: url!)
            noticeWebView.loadRequest(request)
        }else{
            let alert = UIAlertController(title: "Error", message: "Something Went Wrong please retry...", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style:UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
        

       
    }

    func webViewDidStartLoad(noticeWebView:UIWebView){
        actInd.startAnimating()
    }
    
    
    func configureWebView() {
        noticeWebView.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.4)
        noticeWebView.scalesPageToFit = true
        noticeWebView.dataDetectorTypes = .All
    }
    
    
   
    
    
    func webViewDidFinishLoad(noticeWebView:UIWebView){
        actInd.stopAnimating()
        
        
    }

   

}
