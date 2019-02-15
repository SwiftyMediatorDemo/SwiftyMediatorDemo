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
        // 如果需要做动态化，需要支持url跳转，那么需要做注册
        Mediator.register(ModuleAMediatorType.self)
        // 如果需要做动态化，需要对已有的url做替换，那么需要使用这个方法
        Mediator.replace(url: "sy://detail", with: "sy://home?title=Replaced")
        
        // 如果不需要从url获取viewController，那么可以使用枚举来获取，如下
        // Mediator.viewController(of: ModuleAMediatorType.home(title: "Home"))
        guard let home = Mediator.viewController(of: "sy://home?title=Home"),
            let personal = Mediator.viewController(of: ModuleBMediatorType.personal(color: .blue)) else { return }
        
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "viewController")
        let alertContainer = UINavigationController(rootViewController: vc)
    
        self.setViewControllers([home, alertContainer, personal], animated: false)
    }

}
