//
//  SceneDelegate.swift
//  pruebaMVP
//
//  Created by Brayam Mora on 16/07/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        let navigationController = UINavigationController()
        let usersViewController = UsersViewController()
        navigationController.pushViewController(usersViewController, animated: false)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

    

}

