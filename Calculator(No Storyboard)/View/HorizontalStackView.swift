//
//  HorizontalStackView.swift
//  Calculator(No Storyboard)
//
//  Created by Eugene Kotovich on 25.04.2022.
//

import UIKit

class HorizontalStack: UIStackView {
    init() {
        super.init(frame: .zero)
        axis = .horizontal
        alignment = UIStackView.Alignment.center
        distribution = .fillEqually
        spacing = 15
        translatesAutoresizingMaskIntoConstraints = false
    }
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
