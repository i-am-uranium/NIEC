//
//  AppDelegate.swift
//  NIEC
//
//  Created by Ravi Ranjan on 20/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit
import Parse
import Bolts

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        //Parse.enableLocalDatastore()
       
        Parse.setApplicationId("OZUO20LAYm3LrJskaRd8Q7AvjMA5SOH5nHKwD29G",
            clientKey: "IvMgGOhFzszg5DExirImNzyP2Ry8mvPIIrMx13aE")
        
        
       // PFAnalytics.trackAppOpenedWithLaunchOptions(launchOptions)
       //custom color for the tabbar item icons
        
        let navColor:UIColor = UIColor(netHex: 0x00BCD4)
        let tintColor:UIColor = UIColor(netHex: 0xFF5252)
        
        UINavigationBar.appearance().backgroundColor = navColor
        UIBarButtonItem.appearance().tintColor = tintColor
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName: navColor]
        //UITabBar.appearance().backgroundColor = UIColor.yellowColor();
        
        let color = UIColor(red: 194/255, green: 0/255, blue: 4/255, alpha: 1.0)
        UITabBar.appearance().tintColor = color
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
       
    }

    func applicationDidEnterBackground(application: UIApplication) {
       
    }

    func applicationWillEnterForeground(application: UIApplication) {
        
    }

    func applicationDidBecomeActive(application: UIApplication) {
     
    }

    func applicationWillTerminate(application: UIApplication) {
        
    }


}

