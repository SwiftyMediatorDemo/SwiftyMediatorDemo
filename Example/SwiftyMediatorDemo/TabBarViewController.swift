//
//  TabBarViewController.swift
//  SwiftyMediatorDemo_Example
//
//  Created by shayuan on 2019/1/21.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import MediatorTypes
import SwiftyMediator

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let mediator = SwiftyMediator()
        
        guard let home = mediator.viewController(of: ModuleAMediatorType.home(title: "Home")),
            let personal = mediator.viewController(of: ModuleBMediatorType.personal(color: .blue)) else { return }
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "viewController")
        let alertContainer = UINavigationController(rootViewController: vc)
    
        self.setViewControllers([home, alertContainer, personal], animated: false)
    }

}
