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
        let request = NSURLRequest(URL: url!)
        noticeWebView.loadRequest(request)

       
    }

    
    
    func configureWebView() {
        noticeWebView.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.4)
        noticeWebView.scalesPageToFit = true
        noticeWebView.dataDetectorTypes = .All
    }
    
    
    func webViewDidStartLoad(_:UIWebView){
        actInd.startAnimating()
    }
    
    
    func webViewDidFinishLoad(_:UIWebView){
        actInd.stopAnimating()
        
        
    }

   

}
