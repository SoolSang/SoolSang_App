//
//  SceneDelegate.swift
//  SoolSang
//
//  Created by 순진이 on 2023/01/18.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: scene.coordinateSpace.bounds)
        window?.windowScene = scene
        
        let tabBarVC = UITabBarController()
        
        let fisrtVC = HomeViewController()
        let secondVC = SearchViewController()
        let thirdVC = FeedViewController()
        let forthVC = MyPageViewController()
        
        let nav1 = UINavigationController(rootViewController: fisrtVC)
        let nav2 = UINavigationController(rootViewController: secondVC)
        let nav3 = UINavigationController(rootViewController: thirdVC)
        let nav4 = UINavigationController(rootViewController: forthVC)
        
        nav1.tabBarItem = UITabBarItem(title: "홈", image: UIImage(systemName: "house"), tag: 0)
        nav1.navigationBar.topItem?.title = "홈"
        //nav1.navigationItem.title = "Test"
        
        nav2.tabBarItem = UITabBarItem(title: "검색", image: UIImage(systemName: "viewfinder.circle"), tag: 1)
        nav2.navigationBar.topItem?.title = "검색"
        
        nav3.tabBarItem = UITabBarItem(title: "피드", image: UIImage(systemName: "list.bullet.below.rectangle"), tag: 2)
        nav3.navigationBar.topItem?.title = "피드"
        
        nav4.tabBarItem = UITabBarItem(title: "내꺼", image: UIImage(systemName: "person.fill"), tag: 2)
        nav4.navigationBar.topItem?.title = "내꺼"
        
        tabBarVC.setViewControllers([nav1, nav2, nav3, nav4], animated: true)
        
        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

