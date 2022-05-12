//
//  View.swift
//  Calculator(No Storyboard)
//
//  Created by Eugene Kotovich on 25.04.2022.
//

import UIKit

class SubView: UIView {
    
    var buttonsNumbers = [UIButton]()
    var calcButtons = [UIButton]()
    
    //MARK: - Setup Buttons
    
    private lazy var button0: Button = {
        let b = Button(titleText: "0", colorBack: .darkGray, type: .system)
        b.contentHorizontalAlignment = .left
        b.contentEdgeInsets = UIEdgeInsets(top: 0, left: 35, bottom: 0, right: 0)
        return b
    }()
    
    
    private lazy var button1: Button = {
        let b = Button(titleText: "1", colorBack: .darkGray, type: .system)
        return b
    }()
    
    private lazy var button2: Button = {
        let b = Button(titleText: "2", colorBack: .darkGray, type: .system)
        return b
    }()
    
    private lazy var button3: Button = {
        let b = Button(titleText: "3", colorBack: .darkGray, type: .system)
        return b
    }()
    
    private lazy var button4: Button = {
        let b = Button(titleText: "4", colorBack: .darkGray, type: .system)
        return b
    }()
    
    private lazy var button5: Button = {
        let b = Button(titleText: "5", colorBack: .darkGray, type: .system)
        return b
    }()
    
    private lazy var button6: Button = {
        let b = Button(titleText: "6", colorBack: .darkGray, type: .system)
        return b
    }()
    
    private lazy var button7: Button = {
        let b = Button(titleText: "7", colorBack: .darkGray, type: .system)
        return b
    }()
    
    private lazy var button8: Button = {
        let b = Button(titleText: "8", colorBack: .darkGray, type: .system)
        return b
    }()
    
    private lazy var button9: Button = {
        let b = Button(titleText: "9", colorBack: .darkGray, type: .system)
        return b
    }()
    
    private lazy var buttonDot: Button = {
        let b = Button(titleText: ".", colorBack: .darkGray, type: .system)
        return b
    }()
    
    private lazy var buttonAC: Button = {
        let b = Button(titleText: "AC", colorBack: .lightGray, type: .system)
        b.setTitleColor(.black, for: .normal)
        return b
    }()
    
    private lazy var buttonChange: Button = {
        let b = Button(titleText: "+/-", colorBack: .lightGray, type: .system)
        b.setTitleColor(.black, for: .normal)
        return b
    }()
    
    private lazy var buttonPercent: Button = {
        let b = Button(titleText: "%", colorBack: .lightGray, type: .system)
        b.setTitleColor(.black, for: .normal)
        return b
    }()
    
    private lazy var buttonDivide: Button = {
        let b = Button(titleText: "÷", colorBack: .systemOrange, type: .system)
        return b
    }()
    
    private lazy var buttonMultiply: Button = {
        let b = Button(titleText: "×", colorBack: .systemOrange, type: .system)
        return b
    }()
    
    private lazy var buttonMinus: Button = {
        let b = Button(titleText: "–", colorBack: .systemOrange, type: .system)
        return b
    }()
    
    private lazy var buttonPlus: Button = {
        let b = Button(titleText: "+", colorBack: .systemOrange, type: .system)
        return b
    }()
    
    private lazy var buttonEqual: Button = {
        let b = Button(titleText: "=", colorBack: .systemOrange, type: .system)
        return b
    }()
    
    //MARK: - Setup TextField
    
    lazy var textField: UITextField = {
        $0.text = "0"
        $0.textColor = .white
        $0.font = UIFont.systemFont(ofSize: 90, weight: UIFont.Weight.thin)
        $0.minimumFontSize = 60
        $0.textAlignment = .right
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UITextField())
    
    //MARK: - Setup View
    
    private lazy var viewField: UIView = {
        $0.addSubview(textField)
        $0.backgroundColor = .black
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    //MARK: - Setup Stacks
    
    private lazy var stackDotEqual: HorizontalStack = {
        $0.addArrangedSubview(buttonDot)
        $0.addArrangedSubview(buttonEqual)
        return $0
    }(HorizontalStack())
    
    private lazy var stackZeroDotEqual: HorizontalStack = {
        $0.addArrangedSubview(button0)
        $0.addArrangedSubview(stackDotEqual)
        return $0
    }(HorizontalStack())
    
    private lazy var stackOne: HorizontalStack = {
        $0.addArrangedSubview(button1)
        $0.addArrangedSubview(button2)
        $0.addArrangedSubview(button3)
        $0.addArrangedSubview(buttonPlus)
        return $0
    }(HorizontalStack())
    
    private lazy var stackTwo: HorizontalStack = {
        $0.addArrangedSubview(button4)
        $0.addArrangedSubview(button5)
        $0.addArrangedSubview(button6)
        $0.addArrangedSubview(buttonMinus)
        return $0
    }(HorizontalStack())
    
    private lazy var stackThree: HorizontalStack = {
        $0.addArrangedSubview(button7)
        $0.addArrangedSubview(button8)
        $0.addArrangedSubview(button9)
        $0.addArrangedSubview(buttonMultiply)
        return $0
    }(HorizontalStack())
    
    private lazy var stackFour: HorizontalStack = {
        $0.addArrangedSubview(buttonAC)
        $0.addArrangedSubview(buttonChange)
        $0.addArrangedSubview(buttonPercent)
        $0.addArrangedSubview(buttonDivide)
        return $0
    }(HorizontalStack())
    
    private lazy var stack: UIStackView = {
        let s = UIStackView(arrangedSubviews: [viewField, stackFour, stackThree, stackTwo, stackOne, stackZeroDotEqual])
        s.axis = .vertical
        s.distribution = .fill
        s.spacing = 15
        s.translatesAutoresizingMaskIntoConstraints = false
        return s
    }()
    
    //MARK: - Initialize UI
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        
        addButtonNumbers()
        addCalcButtons()
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initialize() {
        addSubview(stack)
        setConstaints()
    }
    
    //MARK: - Setup Constrains
    
    func setConstaints() {
        
        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: topAnchor, constant: 2),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 2),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -2)
        ])
        
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25),
            textField.bottomAnchor.constraint(equalTo: stackFour.topAnchor, constant: -10)
        ])
        
        NSLayoutConstraint.activate([
            
        ])
        
    }
    
    //MARK: - Add Buttons Methods
    
    func addButtonNumbers() {
        buttonsNumbers.append(button0)
        buttonsNumbers.append(button1)
        buttonsNumbers.append(button2)
        buttonsNumbers.append(button3)
        buttonsNumbers.append(button4)
        buttonsNumbers.append(button5)
        buttonsNumbers.append(button6)
        buttonsNumbers.append(button7)
        buttonsNumbers.append(button8)
        buttonsNumbers.append(button9)
        buttonsNumbers.append(buttonDot)
    }
    
    func addCalcButtons() {
        calcButtons.append(buttonAC)
        calcButtons.append(buttonPlus)
        calcButtons.append(buttonMinus)
        calcButtons.append(buttonMultiply)
        calcButtons.append(buttonDivide)
        calcButtons.append(buttonChange)
        calcButtons.append(buttonPercent)
        calcButtons.append(buttonEqual)
    }
    
    
}
