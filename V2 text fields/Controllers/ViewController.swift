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
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = Constants.LabelsTexts.mainTitleLabeText
        titleLabel.font = Constants.LabelsFonts.mainLabelFont
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor = .white
        return titleLabel
    }()
    
    
    
    // 1 field 1
    let noDigitLabel: UILabel = {
        let noDigitLabel = UILabel()
        noDigitLabel.text = Constants.LabelsTexts.noDigitLabelText
        noDigitLabel.backgroundColor = Constants.LabelsBackgroundColors.labelBackgoundColors
        return noDigitLabel
    }()
    let lettersTextView: UIView = {
       let lettersTextView = UIView()
        lettersTextView.backgroundColor = Constants.TextFields.viewBackgroundColor
        return lettersTextView
    }()
    
    let lettersTextField: UITextField = {
        let lettersTextField = UITextField()
        lettersTextField.backgroundColor = Constants.TextFields.viewBackgroundColor
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
        onlyCharectersLabel.backgroundColor = .brown
        
        return onlyCharectersLabel
    }()
    let characterField = {
        let characterField = UITextField()
        characterField.backgroundColor = .brown
        
        return characterField
    }()
    // 4 field 4  LINK
    let linkLabel: UILabel = {
        let linkLabel = UILabel()
        linkLabel.backgroundColor = .cyan
        
        return linkLabel
    }()
    let linkTextField: UITextField = {
        let linkTextField = UITextField()
        linkTextField.backgroundColor = .cyan
        
        return linkTextField
    }()
    // 5 field 5  PASSWORDS
    let validationLabel: UILabel = {
        let validationLabel = UILabel()
        validationLabel.backgroundColor = .magenta
        
        return validationLabel
    }()
    let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.backgroundColor = .magenta
        
        return passwordTextField
    }()
    let validationRulesLabel: UILabel = {
        let validationRulesLabel = UILabel()
        validationRulesLabel.backgroundColor = .link
        
        return validationRulesLabel
    }()
    
    private func setupItemsOnView() {
        //  Textlabel
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(92)
            make.trailing.leading.equalToSuperview().inset(16)
            make.height.equalTo(41)
        }
        // 1 field 1
        view.addSubview(noDigitLabel)
        noDigitLabel.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(163)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(281)
            make.width.equalTo(78)
            make.height.equalTo(20)
        }
      
        view.addSubview(lettersTextView)
        lettersTextView.snp.makeConstraints{make in
            make.top.equalTo(noDigitLabel.snp.bottom).inset(4)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        
//        view.addSubview(lettersTextField)
//        lettersTextField.snp.makeConstraints{ make in
//            make.top.equalTo(noDigitLabel.snp.bottom).offset(4)
//            make.leading.trailing.equalToSuperview().inset(16)
//            make.width.equalTo(343)
//            make.height.equalTo(36)
//        }
        
        
        
        
        
        // 2 field 2
        view.addSubview(inputLimitLabel)
        inputLimitLabel.snp.makeConstraints{ make in
            make.width.equalTo(58)
            make.height.equalTo(20)
            make.top.equalTo(lettersTextView.snp.bottom).offset(30)
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
            make.top.equalTo(lettersTextView.snp.bottom).offset(54)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        // 3 field 3
        view.addSubview(onlyCharectersLabel)
        onlyCharectersLabel.snp.makeConstraints{ make in
            make.width.equalTo(90)
            make.height.equalTo(20)
            make.top.equalTo(limitTextField.snp.bottom).offset(30)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(269)
        }
        view.addSubview(characterField)
        characterField.snp.makeConstraints{ make in
            make.top.equalTo(limitTextField.snp.bottom).offset(54)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        // 4 field 4 LINK
        view.addSubview(linkLabel)
        linkLabel.snp.makeConstraints{ make in
            make.width.equalTo(24)
            make.height.equalTo(20)
            make.top.equalTo(characterField.snp.bottom).offset(30)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(335)
        }
        view.addSubview(linkTextField)
        linkTextField.snp.makeConstraints{ make in
            make.top.equalTo(characterField.snp.bottom).offset(54)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        // 5 field 5  PASSWORDS
        view.addSubview(validationLabel)
        validationLabel.snp.makeConstraints{ make in
            make.width.equalTo(87)
            make.height.equalTo(20)
            make.top.equalTo(linkTextField.snp.bottom).offset(29)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(272)
        }
        view.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints{ make in
            make.top.equalTo(linkTextField.snp.bottom).offset(53)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        view.addSubview(validationRulesLabel)
        validationRulesLabel.snp.makeConstraints{ make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(24)
            make.trailing.equalToSuperview().inset(213)
            make.width.equalTo(138)
            make.height.equalTo(88)
        }
        
        
        
        
    }
        
         func defaultConfiguration() {
             self.view.backgroundColor = .white
//            return
        }
        
        
        
        
        
        
        
        
        
        
        
    }
    
    //MARK: constants
extension ViewController {
    enum Constants {
        enum LabelsFonts {
            static let mainLabelFont = UIFont(name: "Rubik", size: 34)
            static let smallLabelFont = UIFont(name: "Rubik", size: 13)
        }
        enum LabelsTexts {
            static let mainTitleLabeText = "Text Fields"
            static let noDigitLabelText = "NO digit field"
        }
        enum LabelsBackgroundColors {
            static let labelBackgoundColors = UIColor.white
        }
        enum TextFields {
            
            static let viewBackgroundColor = UIColor(red: 118/255, green: 118/255, blue: 128/255, alpha: 0.12)
        }
        
        
        
        
        
        
        
    }
    
    
    
}
