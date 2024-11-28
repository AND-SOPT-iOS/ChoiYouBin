//
//  TabBarController.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import UIKit

class TabBarController: UITabBarController {
    private let firstVC = TossEntryViewController()
    private let secondVC = HobbyViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTabs()
    }
    
    private func setTabs() {
        firstVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "bag.circle"), tag: 0)
        secondVC.tabBarItem = UITabBarItem(title: "", image: UIImage(systemName: "person"), tag: 1)
        
        let firstNav = UINavigationController(rootViewController: firstVC)
        let secondNav = UINavigationController(rootViewController: secondVC)
        
        setViewControllers([firstNav, secondNav], animated: false)
    }
    
}
