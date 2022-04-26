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
    
    private lazy var button0: UIButton = {
        $0.setTitle("0", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        $0.contentHorizontalAlignment = .left
        $0.contentEdgeInsets = UIEdgeInsets(top: 0, left: 35, bottom: 0, right: 0)
        return $0
    }(UIButton(type: .system))
    
    
    private lazy var button1: UIButton = {
        $0.setTitle("1", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var button2: UIButton = {
        $0.setTitle("2", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var button3: UIButton = {
        $0.setTitle("3", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var button4: UIButton = {
        $0.setTitle("4", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var button5: UIButton = {
        $0.setTitle("5", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var button6: UIButton = {
        $0.setTitle("6", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var button7: UIButton = {
        $0.setTitle("7", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var button8: UIButton = {
        $0.setTitle("8", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var button9: UIButton = {
        $0.setTitle("9", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var buttonDot: UIButton = {
        $0.setTitle(".", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 40)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .darkGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var buttonAC: UIButton = {
        $0.setTitle("AC", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .lightGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var buttonChange: UIButton = {
        $0.setTitle("+/-", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .lightGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var buttonPercent: UIButton = {
        $0.setTitle("%", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 35)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .lightGray
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var buttonDivide: UIButton = {
        $0.setTitle("÷", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemOrange
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var buttonMultiply: UIButton = {
        $0.setTitle("×", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemOrange
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    
    private lazy var buttonMinus: UIButton = {
        $0.setTitle("–", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemOrange
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var buttonPlus: UIButton = {
        $0.setTitle("+", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemOrange
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
    private lazy var buttonEqual: UIButton = {
        $0.setTitle("=", for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 50)
        $0.setTitleColor(.white, for: .normal)
        $0.backgroundColor = .systemOrange
        $0.heightAnchor.constraint(equalToConstant: 90).isActive = true
        $0.layer.cornerRadius = 45
        return $0
    }(UIButton(type: .system))
    
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
