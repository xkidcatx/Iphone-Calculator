//
//  ViewController.swift
//  Calculator(No Storyboard)
//
//  Created by Eugene Kotovich on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var isFinishedTypingNumber = true
    
    private var calculator = CalculatorLogic()
    
    private var displayValue: Double {
        get {
            guard let number = Double(subView.textField.text!) else {
                return 0
            }
            return number
        }
        set {
            subView.textField.text = "\(newValue)"
            if newValue == 0 {subView.textField.text = "0"}
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        view.addSubview(subView)
        setConstraints()
    }
    
    
    // MARK: - Button targets settings
    
    private lazy var subView: SubView = {
        let sb = SubView()
        sb.buttonsNumbers.forEach { button in
            button.addTarget(self, action: #selector(numberPressed(_:)), for: .touchUpInside)
        }
        sb.calcButtons.forEach { button in
            button.addTarget(self, action: #selector(calcPressed(_:)), for: .touchUpInside)
        }
        return sb
    }()
    
    
//MARK: - Button methods
    
    @objc func numberPressed(_ sender: UIButton) {
        if let numValue = sender.currentTitle {
                if isFinishedTypingNumber {
                    if numValue == "." {
                        subView.textField.text = "0."
                    } else {
                        subView.textField.text = numValue
                    }
                    isFinishedTypingNumber = false
                    } else {
                        if numValue == "." && subView.textField.text!.contains(".") {
                        return
                    }
                    subView.textField.text! += numValue
                }
            }
    }
    
    @objc func calcPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        calculator.setNumber(displayValue)
        
        if let calcMethod = sender.currentTitle {
            if let result = calculator.calculate(symbol: calcMethod) {
                displayValue = result
            }
        }
    }
    
    //MARK: - Setup Constraints
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            subView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            subView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            subView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            subView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}


