//
//  ButtonView.swift
//  Calculator(No Storyboard)
//
//  Created by Eugene Kotovich on 10.05.2022.
//

import Foundation
import UIKit

class Button: UIButton {
    convenience init(titleText: String, colorBack: UIColor, type: UIButton.ButtonType = .system) {
        self.init(type: type)
        setTitle(titleText, for: .normal)
        setTitleColor(.white, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 40)
        backgroundColor = colorBack
        heightAnchor.constraint(equalToConstant: 90).isActive = true
        layer.cornerRadius = 45
    }
}
