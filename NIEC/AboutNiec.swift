//
//  AboutNiec.swift
//  NIEC
//
//  Created by Ravi Ranjan on 22/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

class AboutNiec: UIViewController {

    @IBOutlet weak var scroller: UIScrollView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewInit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // all the outlets are initialized here
    func viewInit(){
    
        label1.text = "1. Approved by: AICTE"
        label2.text = "2. Accredited by: NBA"
        label3.text = "3. Affiliated to: GGSIPU, Delhi"
        label4.text = "4. ISO 9001:2008 Certified"
        label5.text = "5. EN ISO 14001:2004 Certified"
        
        textView.text = "Northern India Engineering College (NIEC), New Delhi was established by BBDES, LUCKNOW in the year 2003. NIEC has an aesthetically designed campus spread over approximately 9 acres of lush green environment at Shastri Park. The Campus comprises of five interconnected blocks covering a built up area of approx. 3.0 Lac square feet. NIEC offers Under Graduate and Post Graduate level full time Professional programs approved by AICTE in affiliation with Guru Gobind Singh Indraprastha University (GGSIPU), Delhi."
        
        
        self.scroller.contentInset = UIEdgeInsetsMake(0, 0, 600, 0)
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        
    }
    
    //making the subviews scrollable
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
