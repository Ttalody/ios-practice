//
//  ArchonViewController.swift
//  dz5_Akulich
//
//  Created by Артур on 25.12.2023.
//

import UIKit

class ArchonViewController: UIViewController {
    
    private lazy var workView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        
        let dotButton = setupButton(title: ".")
        let zeroButton = setupButton(title: "0")
        let oneButton = setupButton(title: "1")
        let twoButton = setupButton(title: "2")
        let threeButton = setupButton(title: "3")
        let fourButton = setupButton(title: "4")
        let fiveButton = setupButton(title: "5")
        let sixButton = setupButton(title: "6")
        let sevenButton = setupButton(title: "7")
        let eightButton = setupButton(title: "8")
        let nineButton = setupButton(title: "9")
        
        let equalsButton = setupButton(title: "=", titleColor: #colorLiteral(red: 0.2463875413, green: 0.7075428963, blue: 0.8717064261, alpha: 1))
        let clearButton = setupButton(title: "C", bgColor: #colorLiteral(red: 0.2463875413, green: 0.7075428963, blue: 0.8717064261, alpha: 1), titleColor: .white)
        let multiplyButton = setupButton(title: "x", bgColor: #colorLiteral(red: 0.2463875413, green: 0.7075428963, blue: 0.8717064261, alpha: 1), titleColor: .white)
        let minusButton = setupButton(title: "-", bgColor: #colorLiteral(red: 0.2463875413, green: 0.7075428963, blue: 0.8717064261, alpha: 1), titleColor: .white)
        let percentButton = setupButton(title: "%", bgColor: #colorLiteral(red: 0.2463875413, green: 0.7075428963, blue: 0.8717064261, alpha: 1), titleColor: .white)
        let divideButton = setupButton(title: "÷", bgColor: #colorLiteral(red: 0.2463875413, green: 0.7075428963, blue: 0.8717064261, alpha: 1), titleColor: .white)
        let undoButton = setupButton(title: "⌫", bgColor: #colorLiteral(red: 0.2463875413, green: 0.7075428963, blue: 0.8717064261, alpha: 1), titleColor: .white)
        
        let plusButton = setupButton(title: "+", bgColor: #colorLiteral(red: 0.2463875413, green: 0.7075428963, blue: 0.8717064261, alpha: 1), titleColor: .white)
        
        NSLayoutConstraint.activate([
            dotButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            dotButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            dotButton.heightAnchor.constraint(equalTo: dotButton.widthAnchor),
            dotButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            zeroButton.leftAnchor.constraint(equalTo: dotButton.rightAnchor),
            zeroButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            zeroButton.heightAnchor.constraint(equalTo: zeroButton.widthAnchor),
            zeroButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            equalsButton.leftAnchor.constraint(equalTo: zeroButton.rightAnchor),
            equalsButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            equalsButton.heightAnchor.constraint(equalTo: equalsButton.widthAnchor),
            equalsButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            oneButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            oneButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            oneButton.heightAnchor.constraint(equalTo: oneButton.widthAnchor),
            oneButton.bottomAnchor.constraint(equalTo: dotButton.topAnchor),
            
            twoButton.leftAnchor.constraint(equalTo: oneButton.rightAnchor),
            twoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            twoButton.heightAnchor.constraint(equalTo: twoButton.widthAnchor),
            twoButton.bottomAnchor.constraint(equalTo: zeroButton.topAnchor),
            
            threeButton.leftAnchor.constraint(equalTo: twoButton.rightAnchor),
            threeButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            threeButton.heightAnchor.constraint(equalTo: threeButton.widthAnchor),
            threeButton.bottomAnchor.constraint(equalTo: equalsButton.topAnchor),
            
            fourButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            fourButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            fourButton.heightAnchor.constraint(equalTo: fourButton.widthAnchor),
            fourButton.bottomAnchor.constraint(equalTo: oneButton.topAnchor),
            
            fiveButton.leftAnchor.constraint(equalTo: fourButton.rightAnchor),
            fiveButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            fiveButton.heightAnchor.constraint(equalTo: fiveButton.widthAnchor),
            fiveButton.bottomAnchor.constraint(equalTo: twoButton.topAnchor),
            
            sixButton.leftAnchor.constraint(equalTo: fiveButton.rightAnchor),
            sixButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            sixButton.heightAnchor.constraint(equalTo: sixButton.widthAnchor),
            sixButton.bottomAnchor.constraint(equalTo: threeButton.topAnchor),
            
            sevenButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            sevenButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            sevenButton.heightAnchor.constraint(equalTo: sevenButton.widthAnchor),
            sevenButton.bottomAnchor.constraint(equalTo: fourButton.topAnchor),
            
            eightButton.leftAnchor.constraint(equalTo: sevenButton.rightAnchor),
            eightButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            eightButton.heightAnchor.constraint(equalTo: eightButton.widthAnchor),
            eightButton.bottomAnchor.constraint(equalTo: fiveButton.topAnchor),
            
            nineButton.leftAnchor.constraint(equalTo: eightButton.rightAnchor),
            nineButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            nineButton.heightAnchor.constraint(equalTo: nineButton.widthAnchor),
            nineButton.bottomAnchor.constraint(equalTo: sixButton.topAnchor),
            
            clearButton.leftAnchor.constraint(equalTo: view.leftAnchor),
            clearButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            clearButton.heightAnchor.constraint(equalTo: clearButton.widthAnchor),
            clearButton.bottomAnchor.constraint(equalTo: sevenButton.topAnchor),
            
            undoButton.leftAnchor.constraint(equalTo: clearButton.rightAnchor),
            undoButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            undoButton.heightAnchor.constraint(equalTo: undoButton.widthAnchor),
            undoButton.bottomAnchor.constraint(equalTo: eightButton.topAnchor),
            
            percentButton.leftAnchor.constraint(equalTo: undoButton.rightAnchor),
            percentButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            percentButton.heightAnchor.constraint(equalTo: percentButton.widthAnchor),
            percentButton.bottomAnchor.constraint(equalTo: nineButton.topAnchor),
            
            plusButton.leftAnchor.constraint(equalTo: sixButton.rightAnchor),
            plusButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            plusButton.heightAnchor.constraint(equalTo: plusButton.widthAnchor, multiplier: 2),
            plusButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            minusButton.leftAnchor.constraint(equalTo: nineButton.rightAnchor),
            minusButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            minusButton.heightAnchor.constraint(equalTo: minusButton.widthAnchor),
            minusButton.bottomAnchor.constraint(equalTo: plusButton.topAnchor),
            
            multiplyButton.leftAnchor.constraint(equalTo: percentButton.rightAnchor),
            multiplyButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            multiplyButton.heightAnchor.constraint(equalTo: multiplyButton.widthAnchor),
            multiplyButton.bottomAnchor.constraint(equalTo: minusButton.topAnchor),
            
            divideButton.leftAnchor.constraint(equalTo: percentButton.rightAnchor),
            divideButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/4),
            divideButton.heightAnchor.constraint(equalTo: divideButton.widthAnchor),
            divideButton.bottomAnchor.constraint(equalTo: multiplyButton.topAnchor),
            
            workView.leftAnchor.constraint(equalTo: view.leftAnchor),
            workView.rightAnchor.constraint(equalTo: view.rightAnchor),
            workView.topAnchor.constraint(equalTo: view.topAnchor),
            workView.bottomAnchor.constraint(equalTo: divideButton.topAnchor)
        ])
    }
    
    private func setupView() {
        workView.backgroundColor = UIColor(red: 0.1068420336, green: 0.1743595898, blue: 0.2158635259, alpha: 1)
        
        workView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(workView)
    }
    
    private func setupButton(title: String, bgColor: UIColor = .systemBackground, titleColor: UIColor = .label) -> UIButton {
        let frame = CGRect(x: 0, y: view.frame.height - view.bounds.width/4, width: view.bounds.width/4, height: view.bounds.width/4)
        
        let button = UIButton(frame: frame)
        button.setTitle(title, for: .normal)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.font = .systemFont(ofSize: 40)
        
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = bgColor
        
        button.layer.borderWidth = 0.3
        button.layer.borderColor = CGColor(genericCMYKCyan: 0, magenta: 0, yellow: 0, black: 0.3, alpha: 1)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        
        return button
    }
}
