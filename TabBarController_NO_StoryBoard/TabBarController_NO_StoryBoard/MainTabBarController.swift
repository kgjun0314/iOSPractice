//
//  MainTabBarController.swift
//  TabBarController_NO_StoryBoard
//
//  Created by 김경준 on 2023/08/10.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MainTabBarController - viewDidLoad() called")
        
        let firstNC = UINavigationController.init(rootViewController: MyViewController(title: "First", bgColor: UIColor.red))
        let secondNC = UINavigationController.init(rootViewController: MyViewController(title: "Second", bgColor: UIColor.orange))
        let thirdNC = UINavigationController.init(rootViewController: MyViewController(title: "Third", bgColor: UIColor.yellow))
        let fourthNC = UINavigationController.init(rootViewController: MyViewController(title: "Fourth", bgColor: UIColor.green))
        let fifthNC = UINavigationController.init(rootViewController: MyViewController(title: "Fifth", bgColor: UIColor.blue))
        
        self.viewControllers = [firstNC, secondNC, thirdNC, fourthNC, fifthNC]
        
        let firstTabBarItem = UITabBarItem(title: "First", image: UIImage(systemName: "airplayaudio"), tag: 0)
        let secondTabBarItem = UITabBarItem(title: "Second", image: UIImage(systemName: "airplayvideo"), tag: 1)
        let thirdTabBarItem = UITabBarItem(title: "Third", image: UIImage(systemName: "arrow.clockwise.icloud.fill"), tag: 2)
        let fourthTabBarItem = UITabBarItem(title: "Fourth", image: UIImage(systemName: "arrow.down.left.video.fill"), tag: 3)
        let fifthTabBarItem = UITabBarItem(title: "Fifth", image: UIImage(systemName: "safari.fill"), tag: 4)
        
        firstNC.tabBarItem = firstTabBarItem
        secondNC.tabBarItem = secondTabBarItem
        thirdNC.tabBarItem = thirdTabBarItem
        fourthNC.tabBarItem = fourthTabBarItem
        fifthNC.tabBarItem = fifthTabBarItem
    }
}
