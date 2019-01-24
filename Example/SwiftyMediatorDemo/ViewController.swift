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
    
    private var mediator: SwiftyMediator!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.mediator = SwiftyMediator()
        CaseIterable
    }

    @IBAction func alert(_ sender: Any) {
        mediator.present(ModuleBMediatorType.showAlert(title: "Alert", message: "Hello SwiftyMediator"))
    }
    
    @IBAction func push(_ sender: Any) {
        mediator.push(ModuleAMediatorType.detail(id: 2019))

    }
  

}
