//
//  ViewController.swift
//  V2 text fields
//
//  Created by Alex on 07.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupItemsOnView()
        defaultConfiguration()
    }
    
    //TODO: import font
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Text Fields"
        titleLabel.font = UIFont(name: "Rubik", size: 34)
        titleLabel.textAlignment = .center
        
        titleLabel.backgroundColor = .green
        return titleLabel
    }()
    
    let noDigitLabel: UILabel = {
        let noDigitLabel = UILabel()
        noDigitLabel.text = "NO digit field"
        noDigitLabel.backgroundColor = .green
        
        return noDigitLabel
    }()
    let lettersTextField: UITextField = {
        let lettersTextField = UITextField()
        lettersTextField.backgroundColor = .blue
        
        
        return lettersTextField
    }()
    
    let inputLimitLabel: UILabel = {
        let inputLimitLabel = UILabel()
        inputLimitLabel.backgroundColor = .yellow
        
        return inputLimitLabel
    }()
    let charactersCounter: UILabel = {
        let charactersCounter = UILabel()
        charactersCounter.backgroundColor = .yellow
        return charactersCounter
    }()
    
    
    let limitTextField: UITextField = {
        let limitTextField = UITextField()
        limitTextField.backgroundColor = .yellow
        
        return limitTextField
    }()
    
    let onlyCharectersLabel = {
        let onlyCharectersLabel = UILabel()
        
        
        return onlyCharectersLabel
    }()
    let characterField = {
        let characterField = UITextField()
        
        
        return characterField
    }()
    
    let linkLabel: UILabel = {
        let linkLabel = UILabel()
        
        
        return linkLabel
    }()
    let linkTextField: UITextField = {
        let linkTextField = UITextField()
        
        
        return linkTextField
    }()
    
    let validationLabel: UILabel = {
        let validationLabel = UILabel()
        
        
        return validationLabel
    }()
    let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        
        
        return passwordTextField
    }()
    let validationRulesLabel: UILabel = {
        let validationRulesLabel = UILabel()
        
        
        return validationRulesLabel
    }()
    
    private func setupItemsOnView() {
        // 1 Textlabel 1
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(92)
            make.trailing.leading.equalToSuperview().inset(16)
            make.height.equalTo(41)
        }
        // 2 field 2
        view.addSubview(noDigitLabel)
        noDigitLabel.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(163)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(281)
            make.width.equalTo(78)
            make.height.equalTo(20)
        }
        view.addSubview(lettersTextField)
        lettersTextField.snp.makeConstraints{ make in
            make.top.equalTo(noDigitLabel.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        // 3 field 3
        view.addSubview(inputLimitLabel)
        inputLimitLabel.snp.makeConstraints{ make in
            make.width.equalTo(58)
            make.height.equalTo(20)
            make.top.equalTo(lettersTextField.snp.bottom).offset(30)
//            make.top.equalToSuperview().offset(253)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(301)
        }
        view.addSubview(charactersCounter)
        charactersCounter.snp.makeConstraints{ make in
            make.width.equalTo(25)
            make.height.equalTo(22)
            make.top.equalToSuperview().offset(248)
            make.trailing.equalToSuperview().inset(16)
            make.leading.equalToSuperview().inset(334)
        }
        view.addSubview(limitTextField)
        limitTextField.snp.makeConstraints{ make in
            make.top.equalTo(lettersTextField.snp.bottom).offset(54)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        // 2 field 2
        
        
        
        view.addSubview(noDigitLabel)
        noDigitLabel.snp.makeConstraints{ make in
            
        }
    }
        
         func defaultConfiguration() {
             self.view.backgroundColor = .white
//            return
        }
        
        
        
        
        
        
        
        
        
        
        
    }
    
    //MARK: constants
//    extension ViewController {
//        enum Constants {
//            enum titleLabel {
//                static
//            }
//        }
//    }
    
    

