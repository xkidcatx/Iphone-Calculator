//
//  ViewController.swift
//  Calculator(No Storyboard)
//
//  Created by Eugene Kotovich on 22.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
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
        
    }
    
    @objc func calcPressed(_ sender: UIButton) {
        
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


