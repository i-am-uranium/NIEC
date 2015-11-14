//
//  ContactUs.swift
//  NIEC
//
//  Created by Ravi Ranjan on 23/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit
import MapKit

class ContactUs: UIViewController,CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!

    @IBOutlet weak var directionsButton: UIButton!
    
    @IBOutlet weak var emailUsButton: UIButton!
    
    @IBOutlet weak var callUsButton: UIButton!
    
    @IBOutlet weak var socialLinksButton: UIButton!
    
    @IBOutlet weak var tpoButton: UIButton!
    override func viewDidLoad() {
        mapImplementation()
        customizingView()
        super.viewDidLoad()
        let backButton = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.Plain, target: self, action: nil)
        navigationItem.backBarButtonItem = backButton
        self.title = "Contact Us"
        }
    
    // to implement the map view
    func mapImplementation(){
        let locationMGR = CLLocationManager()
        locationMGR.delegate = self
        locationMGR.desiredAccuracy = kCLLocationAccuracyThreeKilometers
        locationMGR.startUpdatingLocation()
        let location = CLLocationCoordinate2DMake(28.678280999999998, 77.260981999999998)
        let  span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)
        // to create the annaotation
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = "NIEC"
        annotation.subtitle = "Northern India Engineering College"
        mapView.addAnnotation(annotation)
    }
    
    // customizing the view
    func customizingView(){
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "login")!)
        self.mapView.layer.cornerRadius =
        self.mapView.frame.size.width / 5
        self.mapView.clipsToBounds = true
        self.mapView.layer.borderWidth = 3.0
        self.mapView.layer.borderColor = UIColor.whiteColor().CGColor
        self.directionsButton.layer.cornerRadius = 5.0
        self.emailUsButton.layer.cornerRadius = 5.0
        self.callUsButton.layer.cornerRadius = 5.0
        self.socialLinksButton.layer.cornerRadius = 5.0
        self.tpoButton.layer.cornerRadius = 5.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func directionButtonsFunction(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://maps.apple.com/maps?daddr=28.678280999999998,77.260981999999998")!)
    }
    
    
    
    @IBAction func callUsButtonsFunction(sender: AnyObject) {
        let alertController = UIAlertController(title: "Call Us", message: "Are you sure you would like to call us", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default){
            UIAlertAction in
            //this how we can make call from the app
            let url : NSURL = NSURL(string: "tel://123456")!
            UIApplication.sharedApplication().openURL(url)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel){
            UIAlertAction in
        }
        alertController.addAction(okAction)
        alertController.addAction(cancel)
        self.presentViewController(alertController, animated: true, completion: nil)
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
