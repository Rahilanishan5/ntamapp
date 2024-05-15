//
//  AppDelegate.swift
//  ntamapp
//
//  Created by RAHILA NISHAN on 15/05/2024.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Create the UIWindow
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Set up the initial view controller
        let viewController = ViewController() // Your initial view controller
        let navigationController = UINavigationController(rootViewController: viewController)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }

}
