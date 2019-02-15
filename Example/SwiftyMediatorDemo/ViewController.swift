//
//  ViewController.swift
//  SwiftyMediatorDemo_Example
//
//  Created by shayuan on 2019/1/21.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import MediatorTypes
import SwiftyMediator

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func alert(_ sender: Any) {
        Mediator.present(ModuleBMediatorType.showAlert(title: "Alert", message: "Hello SwiftyMediator"))
    }
    
    @IBAction func push(_ sender: Any) {
        
        // 使用url来push，注意：因为在`TabBarViewController`中已经将这个url做了替换，所以推的是Home
        Mediator.push("sy://detail")
        
        // 也可以这样来推
        // Mediator.push(ModuleAMediatorType.home(title: "Home-Pushed"))
        
    }
  

}
