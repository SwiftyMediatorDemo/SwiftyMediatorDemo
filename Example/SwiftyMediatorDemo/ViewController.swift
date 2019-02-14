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
        Mediator.push("sy://detail")
    }
  

}
