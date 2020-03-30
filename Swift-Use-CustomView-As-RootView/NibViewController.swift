//
//  NibViewController.swift
//  Swift-Use-CustomView-As-RootView
//
//  Created by Jeremy Xue on 2020/3/30.
//  Copyright © 2020 jeremyxue. All rights reserved.
//

import UIKit

class NibViewController: UIViewController {
    
    // MARK: Property
    let myNibView = MyNibView()

    // MARK: Life cycle
    override func loadView() {
        super.loadView()
        view = myNibView
        myNibView.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myNibView.messageLabel.backgroundColor = .blue
        
    }
}
