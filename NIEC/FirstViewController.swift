//
//  FirstViewController.swift
//  NIEC
//
//  Created by Ravi Ranjan on 20/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var studentSectionButton: UIButton!
    @IBOutlet weak var noticesButton: UIButton!
    @IBOutlet weak var latestEventsButton: UIButton!
    @IBOutlet weak var mediaButton: UIButton!
    @IBOutlet weak var socialLinksButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        buttonRadius()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func buttonRadius(){
        // setting the background of the main home page
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        //making the rounded corners of the buttons
        studentSectionButton.layer.cornerRadius = 5
        noticesButton.layer.cornerRadius = 5
        latestEventsButton.layer.cornerRadius = 5
        mediaButton.layer.cornerRadius = 5
        socialLinksButton.layer.cornerRadius = 5
    }


}

