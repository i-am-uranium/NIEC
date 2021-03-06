//  Created by Ravi Ranjan on 20/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit
import Parse

class FirstViewController: UIViewController {
    
//    var color = UIColor(red: 0xFF, green: 0xFF, blue: 0xFF)
//    var color2 = UIColor(netHex:0x211c32)
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var studentSectionButton: UIButton!
    @IBOutlet weak var noticesButton: UIButton!
    @IBOutlet weak var latestEventsButton: UIButton!
    @IBOutlet weak var mediaButton: UIButton!
    @IBOutlet weak var socialLinksButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

     //   animateImage()
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        buttonRadius()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    
    // to make an animating imageView
    
//   func animateImage(){
//    var imageName = ["logo_one","logo_two","logo_three","logo_four","logo_five","logo_six","logo_seven"]
//    var images = [UIImage]()
//    for i in 0..<imageName.count{
//        images.append(UIImage(named: imageName[i])!)
//    }
//    logo.animationImages = images
//    logo.animationDuration = 5.0
//    logo.startAnimating()
//
//    }
    
    
    func buttonRadius(){
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "n")!)
        //making the rounded corners of the buttons
        studentSectionButton.layer.cornerRadius = 5
        noticesButton.layer.cornerRadius = 5
        latestEventsButton.layer.cornerRadius = 5
        mediaButton.layer.cornerRadius = 5
        socialLinksButton.layer.cornerRadius = 5
    }
    
    
}

