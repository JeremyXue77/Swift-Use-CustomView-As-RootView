//
//  MyView.swift
//  Swift-Use-CustomView-As-RootView
//
//  Created by Jeremy Xue on 2020/3/30.
//  Copyright © 2020 jeremyxue. All rights reserved.
//

import UIKit

class MyView: UIView {
    
    // MARK: IBOutlet
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var lightSwitch: UISwitch!
    @IBOutlet weak var fontSizeStepper: UIStepper!
    
    // MARK: Awake from nib
    override func awakeFromNib() {
        super.awakeFromNib()
        setFontSizeStepperDefaultValue()
    }
    
    // MARK: IBAction
    @IBAction func toggleLightMode(_ sender: UISwitch) {
        messageLabel.textColor = !sender.isOn ? .black : .white
        self.backgroundColor = sender.isOn ? .black : .white
    }
    
    @IBAction func changeMessageLabelFontSize(_ sender: UIStepper) {
        let fontSize = CGFloat(sender.value)
        messageLabel.font = UIFont.systemFont(ofSize: fontSize)
    }
    
    // MARK: Setting methods
    private func setFontSizeStepperDefaultValue() {
        fontSizeStepper.value = Double(messageLabel.font.pointSize)
    }
}
