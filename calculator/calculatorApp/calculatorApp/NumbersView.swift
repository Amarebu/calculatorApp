//
//  NumbersView.swift
//  calculatorApp
//
//  Created by Reguera Bueno Ana María on 26/9/23.
//

import UIKit

class NumbersView: UIView {

    // Stacks
    private let verticalGroupHorizontalsStacksView = UIStackView()
    
    private let buttonsStackView = UIStackView()
    private let buttonsSecondStackView = UIStackView()
    private let buttonsThirdStackView = UIStackView()
    private let buttonsFourStackView = UIStackView()
    private let buttonsFiveStackView = UIStackView()
    private let buttonsFinalFiveStackView = UIStackView()
    
    // Buttons
    let buttonAC = UIButton()
    let buttonChangeValue = UIButton()
    let buttonPercent = UIButton()
    let buttonDivisor = UIButton()
    
    let buttonSeven = UIButton()
    let buttonEigth = UIButton()
    let buttonNine = UIButton()
    let buttonMultiplication = UIButton()
    
    let buttonFour = UIButton()
    let buttonFive = UIButton()
    let buttonSix = UIButton()
    let buttonMinus = UIButton()
    
    let buttonOne = UIButton()
    let buttonTwo = UIButton()
    let buttonThree = UIButton()
    let buttonPlus = UIButton()
    
    let buttonCero = UIButton()
    let buttonPoint = UIButton()
    let buttonEqual = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        // Buttons
        setUpACButton()
        setUpChangeSymbol()
        setUpPercentSymbol()
        setUpDivisorSymbol()
        
        setUpSevenButton()
        setUpEigthButton()
        setUpNineButton()
        setUpMultiplierSymbol()
        
        setUpFourButton()
        setUpFiveButton()
        setUpSixButton()
        setUpMinusSymbol()
        
        setUpOneButton()
        setUpTwoButton()
        setUpThreeButton()
        setUpPlusSymbol()
        
        setUpCeroButton()
        setUpPointSymbol()
        setUpEqualSymbol()
        
        // StacksViews
        setUpGroupHorizontalStackViews()
        
        setUpButtonStackView()
        setUpSecondButtonStackView()
        setUpThirdButtonStackView()
        setUpFourButtonStackView()
        setUpFiveButtonStackView()
        
        setUpFinalButtonStackView()
        
        setUpFinalView()
    }
    func setUpFinalView() {
        addSubview(verticalGroupHorizontalsStacksView)
        verticalGroupHorizontalsStacksView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            verticalGroupHorizontalsStacksView.topAnchor.constraint(equalTo: topAnchor),
            verticalGroupHorizontalsStacksView.leadingAnchor.constraint(equalTo: leadingAnchor),
            verticalGroupHorizontalsStacksView.trailingAnchor.constraint(equalTo: trailingAnchor),
            verticalGroupHorizontalsStacksView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    
    func setUpGroupHorizontalStackViews() {
        setUpStacksViews(verticalGroupHorizontalsStacksView)
        verticalGroupHorizontalsStacksView.addArrangedSubview(buttonsStackView)
        verticalGroupHorizontalsStacksView.addArrangedSubview(buttonsSecondStackView)
        verticalGroupHorizontalsStacksView.addArrangedSubview(buttonsThirdStackView)
        verticalGroupHorizontalsStacksView.addArrangedSubview(buttonsFourStackView)
        verticalGroupHorizontalsStacksView.addArrangedSubview(buttonsFinalFiveStackView)

    }
    func setUpButtonStackView() {
        setUpHorizontalStacksViews(buttonsStackView)
        buttonsStackView.addArrangedSubview(buttonAC)
        buttonsStackView.addArrangedSubview(buttonChangeValue)
        buttonsStackView.addArrangedSubview(buttonPercent)
        buttonsStackView.addArrangedSubview(buttonDivisor)
    }
    
    func setUpSecondButtonStackView() {
        setUpHorizontalStacksViews(buttonsSecondStackView)
        buttonsSecondStackView.addArrangedSubview(buttonSeven)
        buttonsSecondStackView.addArrangedSubview(buttonNine)
        buttonsSecondStackView.addArrangedSubview(buttonEigth)
        buttonsSecondStackView.addArrangedSubview(buttonMultiplication)
    }
    
    func setUpThirdButtonStackView() {
        setUpHorizontalStacksViews(buttonsThirdStackView)
        buttonsThirdStackView.addArrangedSubview(buttonFour)
        buttonsThirdStackView.addArrangedSubview(buttonFive)
        buttonsThirdStackView.addArrangedSubview(buttonSix)
        buttonsThirdStackView.addArrangedSubview(buttonMinus)
    }
    func setUpFourButtonStackView() {
        setUpHorizontalStacksViews(buttonsFourStackView)
        buttonsFourStackView.addArrangedSubview(buttonOne)
        buttonsFourStackView.addArrangedSubview(buttonTwo)
        buttonsFourStackView.addArrangedSubview(buttonThree)
        buttonsFourStackView.addArrangedSubview(buttonPlus)
    }
    
    func setUpFinalButtonStackView() {
        setUpHorizontalStacksViews(buttonsFinalFiveStackView)
        buttonsFinalFiveStackView.addArrangedSubview(buttonCero)
        buttonsFinalFiveStackView.addArrangedSubview(buttonsFiveStackView)
    }
    
    func setUpFiveButtonStackView() {
        setUpHorizontalStacksViews(buttonsFiveStackView)
        buttonsFiveStackView.addArrangedSubview(buttonPoint)
        buttonsFiveStackView.addArrangedSubview(buttonEqual)
    }
    
    // Makes the buttons
    // first row
    func setUpACButton() {
        buttonAC.setTitle("AC", for: .normal)
        setUpButton(buttonName: buttonAC, color: "cleanGray")
        buttonAC.setTitleColor(.black, for: .normal)
    }
    
    func setUpChangeSymbol() {
        buttonChangeValue.setTitle("+/-", for: .normal)
        setUpButton(buttonName: buttonChangeValue, color: "cleanGray")
        buttonChangeValue.setTitleColor(.black, for: .normal)
    }
    
    func setUpPercentSymbol() {
        buttonPercent.setTitle("%", for: .normal)
        setUpButton(buttonName: buttonPercent, color: "cleanGray")
        buttonPercent.setTitleColor(.black, for: .normal)
    }
    
    func setUpDivisorSymbol() {
        buttonDivisor.setTitle("/", for: .normal)
        setUpButton(buttonName: buttonDivisor, color: "orangeColor")
    }
    // Second Row
    func setUpSevenButton() {
        buttonSeven.setTitle("7", for: .normal)
        setUpButton(buttonName: buttonSeven, color: "backColor")
    }
    

    func setUpEigthButton() {
        buttonEigth.setTitle("8", for: .normal)
        setUpButton(buttonName: buttonEigth, color: "backColor")
    }
    
    func setUpNineButton() {
        buttonNine.setTitle("9", for: .normal)
        setUpButton(buttonName: buttonNine, color: "backColor")
    }
    
    func setUpMultiplierSymbol() {
        buttonMultiplication.setTitle("X", for: .normal)
        setUpButton(buttonName: buttonMultiplication, color: "orangeColor")
    }
    //Third row
    func setUpFourButton() {
        buttonFour.setTitle("4", for: .normal)
        setUpButton(buttonName: buttonFour, color: "backColor")
    }
    
    func setUpFiveButton() {
        buttonFive.setTitle("5", for: .normal)
        setUpButton(buttonName: buttonFive, color: "backColor")
    }
    
    func setUpSixButton() {
        buttonSix.setTitle("6", for: .normal)
        setUpButton(buttonName: buttonSix, color: "backColor")
    }
    
    func setUpMinusSymbol() {
        buttonMinus.setTitle("-", for: .normal)
        setUpButton(buttonName: buttonMinus, color: "orangeColor")
    }
    //Four row
    func setUpOneButton() {
        buttonOne.setTitle("1", for: .normal)
        setUpButton(buttonName: buttonOne, color: "backColor")
    }
    
    func setUpTwoButton() {
        buttonTwo.setTitle("2", for: .normal)
        setUpButton(buttonName: buttonTwo, color: "backColor")
    }
    
    func setUpThreeButton() {
        buttonThree.setTitle("3", for: .normal)
        setUpButton(buttonName: buttonThree, color: "backColor")
    }
    
    func setUpPlusSymbol() {
        buttonPlus.setTitle("+", for: .normal)
        setUpButton(buttonName: buttonPlus, color: "orangeColor")
    }
    //Five row
    func setUpCeroButton() {
        buttonCero.setTitle("0", for: .normal)
        setUpButton(buttonName: buttonCero, color: "backColor")
        buttonCero.widthAnchor.constraint(equalToConstant: 144).isActive = true
    }
    
    func setUpPointSymbol() {
        buttonPoint.setTitle(".", for: .normal)
        setUpButton(buttonName: buttonPoint, color: "backColor")
    }
    
    func setUpEqualSymbol() {
        buttonEqual.setTitle("=", for: .normal)
        setUpButton(buttonName: buttonEqual, color: "backColor")
    }
}

extension NumbersView {
    
    func setUpButton(buttonName: UIButton, color: String) {
        buttonName.setTitleColor(.white, for: .normal)
        buttonName.translatesAutoresizingMaskIntoConstraints = false
        buttonName.heightAnchor.constraint(equalToConstant: 66).isActive = true
        buttonName.layer.masksToBounds = false
        buttonName.layer.cornerRadius = 33
        buttonName.backgroundColor = UIColor(named: color)
        buttonName.isEnabled = true
    }
    
    func setUpStacksViews(_ stackView: UIStackView) {
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setUpHorizontalStacksViews(_ stackView: UIStackView) {
        stackView.axis = .horizontal
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
}
