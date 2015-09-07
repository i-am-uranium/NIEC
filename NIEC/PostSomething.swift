//
//  PostSomething.swift
//  NIEC
//
//  Created by Ravi Ranjan on 07/09/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class PostSomething: UIViewController {

    @IBOutlet var username: UITextField!
    var color = UIColor(netHex:0x211c32)
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = color
        leftIconadd("ic_person_36pt",fieldName: username)
        
        
        
        
        
        

        // Do any additional setup after loading the view.
    }
    
    
    
    func leftIconadd(icon:String,fieldName:UITextField)->Void{
        
        let imageView = UIImageView();
        
        let image = UIImage(named: "icon");
        
        imageView.image = image;
        
        imageView.frame = CGRect(x: 0, y: 10, width: 25, height: 25)
        
        view.addSubview(imageView)
        
        fieldName.leftView = imageView;
        
        fieldName.leftViewMode = UITextFieldViewMode.Always
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
