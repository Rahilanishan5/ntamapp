//
//  SceneDelegate.swift
//  ntamapp
//
//  Created by RAHILA NISHAN on 15/05/2024.
//
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        let viewController = ViewController() // Your initial view controller
        let navigationController = UINavigationController(rootViewController: viewController)
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

    // Other methods like sceneWillResignActive, sceneDidEnterBackground, etc.
    
}
