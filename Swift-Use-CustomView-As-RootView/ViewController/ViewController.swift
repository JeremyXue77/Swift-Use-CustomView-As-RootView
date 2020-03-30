//
//  ViewController.swift
//  Swift-Use-CustomView-As-RootView
//
//  Created by Jeremy Xue on 2020/3/30.
//  Copyright © 2020 jeremyxue. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Root view
    var rootView: MyView { (view as! MyView) }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rootView.messageLabel.backgroundColor = .red
    }
}



