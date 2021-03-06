//
//  MainTabBarController.swift
//  Donate-Cafe
//
//  Created by Леонід Квіт on 21.03.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //view.backgroundColor = .green
        setupTabBar()
        self.tabBar.tintColor = UIColor.TabBar.tint
        navigationController?.view.backgroundColor = UIColor.NavBar.background
    }

    func setupTabBar() {
        let scheduleViewController = createNavController(vc: SalesViewController(), itemName: "Sales", itemImage: "cup.and.saucer.fill")
        let tasksViewController = createNavController(vc: PurchasesViewController(), itemName: "Purchases", itemImage: "takeoutbag.and.cup.and.straw.fill")
        let contactsViewController = createNavController(vc: SettingsViewController(), itemName: "Settings", itemImage: "gearshape")
        
        viewControllers = [scheduleViewController, tasksViewController, contactsViewController]
    }
    
    func createNavController(vc: UIViewController, itemName: String, itemImage: String) -> UINavigationController{
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage), tag: 0) //?.withAlignmentRectInsets(.init(top: 10, left: 0, bottom: 0, right: 0))
        //item.titlePositionAdjustment = .init(horizontal: 0, vertical: 10)
        
        let navController = UINavigationController(rootViewController: vc)
        navController.tabBarItem = item
        navController.view.backgroundColor = UIColor.NavBar.background
        
        return navController
    }
}
