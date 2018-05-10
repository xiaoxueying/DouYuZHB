//
//  MainViewController.swift
//  DouYuZHiBo
//
//  Created by 肖雪莹 on 10/05/2018.
//  Copyright © 2018 xiao. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addChildVc("Home")
        addChildVc("Live")
        addChildVc("Follow")
        addChildVc("Profile")

    }
    
    private func addChildVc(_ storyName : String){
        let childVC  = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        addChildViewController(childVC)
    }

   
}
