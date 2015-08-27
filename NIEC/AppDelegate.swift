//
//  AppDelegate.swift
//  NIEC
//
//  Created by Ravi Ranjan on 20/07/15.
//  Copyright © 2015 Ravi Ranjan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
       //custom color for the tabbar item icons
        
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

