//
//  ViewController.swift
//  calculatorApp
//
//  Created by Reguera Bueno Ana María on 20/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpView()
        setUpPrincipalSatckView()
        // StacksViews
        setUpResultsStackView()
        setUpAditionalResultsStackView()
    }
    
    private var resultView = ResultView()
    private var secondResultView = ResultView()
    private var thirdResultView = ResultView()
    private var numberView = NumbersView()
    private let stackView = UIStackView()
    private let aditionalResultsStackView = UIStackView()
    private let resultsStackView = UIStackView()
    
    func setUpView() {
        view?.backgroundColor = .black
        view?.addSubview(stackView)
    }
    
    func setUpPrincipalSatckView() {
        setUpStacksViews(stackView)
        stackView.addArrangedSubview(resultsStackView)
        stackView.addArrangedSubview(numberView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -15),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    
    func setUpAditionalResultsStackView() {
        setUpStacksViews(aditionalResultsStackView)
        aditionalResultsStackView.addArrangedSubview(thirdResultView)
        aditionalResultsStackView.addArrangedSubview(secondResultView)
        
    }
    
    func setUpResultsStackView() {
        setUpStacksViews(resultsStackView)
        resultsStackView.addArrangedSubview(aditionalResultsStackView)
        resultsStackView.addArrangedSubview(resultView)
    }
    
    // Esto es para meter en la operacion 2 una ecuación y su resultado
    func setUpSecondResult() {
        secondResultView.setLabelResultOperation(operation: "2+3", result: "5")
    }
    
    func setUpFirstResult(operation: String, number: Float) {
        resultView.setLabelResultOperation(operation: "2+3", result: "5")
    }
    
    
}

extension ViewController {
    
    func setUpStacksViews(_ stackView: UIStackView) {
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}

