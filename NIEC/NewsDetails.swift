//
//  NewsDetails.swift
//  NIEC
//
//  Created by Ravi Ranjan on 26/08/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class NewsDetails: UIViewController {

    @IBOutlet weak var details: UITextView!
    var detail:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "new")!)
        if(detail != nil){
            self.details.text = detail
            self.title = detail
        }else{
        
            self.details.text = "error!"
        }
        self.details.backgroundColor = UIColor.whiteColor().colorWithAlphaComponent(0.2)
        

    }
    

}
