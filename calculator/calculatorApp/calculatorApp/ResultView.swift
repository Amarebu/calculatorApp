//
//  ResultView.swift
//  calculatorApp
//
//  Created by Reguera Bueno Ana María on 25/9/23.
//

import UIKit

class ResultView: UIView {

    private let firstOperationStackView = UIStackView()
    private var labelFirstOperation = UILabel()
    private var labelFirstResult = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setUpFinalView()
        setUpFirstOperationStackView()
        setUpFirstResult()
        setUpFirstOperation()
    }
    
    func setUpFinalView() {
        addSubview(firstOperationStackView)
        firstOperationStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            firstOperationStackView.topAnchor.constraint(equalTo: topAnchor),
            firstOperationStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            firstOperationStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            firstOperationStackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
    func setUpFirstOperationStackView() {
        setUpStacksViews(firstOperationStackView)
        firstOperationStackView.addArrangedSubview(labelFirstOperation)
        firstOperationStackView.addArrangedSubview(labelFirstResult)
    }
    
    func setUpFirstOperation() {
        setUpLabelsVisual(labelFirstOperation, "")
    }
    
    func setUpFirstResult() {
        setUpLabelsVisual(labelFirstResult, "")
    }

}

extension ResultView {
    
    func setUpStacksViews(_ stackView: UIStackView) {
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 5
        //stackView.backgroundColor = .blue
        stackView.translatesAutoresizingMaskIntoConstraints = false
    }
    func setUpLabelsVisual(_ label: UILabel, _ description: String) {
        label.text = description
        label.textColor = .white
        label.backgroundColor = UIColor(named: "backColor")
        label.textAlignment = .right
    }
    
    func setLabelResultOperation(operation: String, result: String) {
        labelFirstOperation.text = operation
        labelFirstResult.text = result
    }
}
