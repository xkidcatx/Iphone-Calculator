//
//  ViewController.swift
//  Calculator(No Storyboard)
//
//  Created by Eugene Kotovich on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var isFinishedTypingNumber = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(subView.textField.text!) else {
                return 0
            }
            return number
        }
        set {
            subView.textField.text = String(newValue)
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
    
    @objc func numberPressed(_ sender: UIButton) {
        
        if let newValue = sender.currentTitle {
            if isFinishedTypingNumber {
                subView.textField.text = newValue
                isFinishedTypingNumber = false
            } else {
                if newValue == "." {
                    guard !subView.textField.text!.contains(".") else {
                        
                        return
                    }
                }
                subView.textField.text = subView.textField.text! + newValue
            }
        }
        
    }
    
    @objc func calcPressed(_ sender: UIButton) {
        isFinishedTypingNumber = true
        
        if let calcMethod = sender.currentTitle {
            let calculator = CalculatorLogic(number: displayValue)
            guard let result = calculator.calculate(symbol: calcMethod) else {
                fatalError("The result of the calculation is nil.")
            }
            displayValue = result
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


