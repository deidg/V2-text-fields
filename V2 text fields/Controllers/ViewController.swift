//
//  ViewController.swift
//  V2 text fields
//
//  Created by Alex on 07.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var digitCounter: Int = 0
    
    
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
    
    
    
    //MARK: 1 field 1
    let noDigitLabel: UILabel = {
        let noDigitLabel = UILabel()
        noDigitLabel.text = Constants.LabelsTexts.noDigitLabelText // больше буквы какие то. В нижнем лейбле - смотряться ок.
        noDigitLabel.backgroundColor = Constants.LabelsBackgroundColors.labelBackgoundColors
        noDigitLabel.textColor = Constants.LabelsTexts.smallLabelTextColor
        noDigitLabel.font = Constants.LabelsFonts.smallLabelFont

        return noDigitLabel
    }()
    let lettersTextView: UIView = {
        let lettersTextView = UIView()
        lettersTextView.backgroundColor = Constants.TextFields.viewBackgroundColor
        lettersTextView.layer.cornerRadius = Constants.LabelsSettings.lettersTextViewCornerRadius
        return lettersTextView
    }()
    
    let lettersTextField: UITextField = {
        let lettersTextField = UITextField()
        lettersTextField.text = Constants.TextFields.lettersTextFieldText
        lettersTextField.textColor = Constants.TextFields.textFieldTextColor
        lettersTextField.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        lettersTextField.font = Constants.TextFields.textFieldFont
        return lettersTextField
    }()
    
    //MARK:  2 field 2
    let inputLimitLabel: UILabel = {
        let inputLimitLabel = UILabel()
        inputLimitLabel.text = Constants.LabelsTexts.inputLimitLabelText
        inputLimitLabel.backgroundColor = .white
        inputLimitLabel.textColor = Constants.LabelsTexts.smallLabelTextColor
        inputLimitLabel.font = Constants.LabelsFonts.smallLabelFont
        return inputLimitLabel
    }()
    let charactersCounter: UILabel = {
        let charactersCounter = UILabel()
        charactersCounter.backgroundColor = .white
        charactersCounter.text = Constants.LabelsTexts.charactersCounterText
        charactersCounter.textAlignment = .right
        charactersCounter.textColor = Constants.LabelsTexts.smallLabelTextColor
        charactersCounter.font = Constants.LabelsFonts.smallLabelFont
        return charactersCounter
    }()
    let limitTextView: UIView = {
        let limitTextView = UIView()
        limitTextView.backgroundColor = .yellow
        limitTextView.backgroundColor = Constants.TextFields.viewBackgroundColor
        limitTextView.layer.cornerRadius = Constants.LabelsSettings.lettersTextViewCornerRadius
        return limitTextView
    }()
    let limitTextField: UITextField = {
        let limitTextField = UITextField()
        limitTextField.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        limitTextField.text = Constants.TextFields.lettersTextFieldText
        limitTextField.textColor = Constants.TextFields.textFieldTextColor
        limitTextField.font = Constants.TextFields.textFieldFont
        return limitTextField
    }()
    
    
    //MARK:  3 field 3
    
    let onlyCharectersLabel: UILabel = {
        let onlyCharectersLabel = UILabel()
        onlyCharectersLabel.text = Constants.LabelsTexts.onlyCharectersLabelText
        onlyCharectersLabel.backgroundColor = .white
        onlyCharectersLabel.textColor = Constants.LabelsTexts.smallLabelTextColor
        onlyCharectersLabel.font = Constants.LabelsFonts.smallLabelFont
        return onlyCharectersLabel
    }()
    let characterFieldView: UIView = {
        let characterFieldView = UITextField()
        characterFieldView.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        characterFieldView.layer.cornerRadius = Constants.LabelsSettings.lettersTextViewCornerRadius
        return characterFieldView
    }()
    let characterField: UITextField = {
        let characterField = UITextField()
        characterField.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        characterField.text = Constants.TextFields.onlyCharectersLabelText
        characterField.textColor = Constants.TextFields.textFieldTextColor
        characterField.font = Constants.TextFields.textFieldFont
        return characterField
    }()
    
    
    
    
    
    
    
    //MARK:  4 field 4  LINK
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
    
    
    //MARK:  5 field 5  PASSWORDS
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
            make.top.equalTo(noDigitLabel.snp.bottom).offset(4)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        
        lettersTextView.addSubview(lettersTextField)
        lettersTextField.snp.makeConstraints{ make in
//            make.top.equalTo(titleLabel.snp.bottom).offset(54)
            make.leading.equalTo(lettersTextView).inset(8)
            make.trailing.equalTo(lettersTextView).inset(260)
            make.top.equalTo(lettersTextView.snp.top).inset(7)// TODO: пофиксить высоту
            make.bottom.equalTo(lettersTextView.snp.bottom).inset(7)
            make.width.equalTo(75)
            make.height.equalTo(22)
        }
        
        
        
        
        // 2 field 2
        view.addSubview(inputLimitLabel)
        inputLimitLabel.snp.makeConstraints{ make in
            make.width.equalTo(58)
            make.height.equalTo(20)
            make.top.equalTo(lettersTextView.snp.bottom).offset(30)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(301)
        }
        view.addSubview(charactersCounter)
        charactersCounter.snp.makeConstraints{ make in
            make.width.equalTo(25)
            make.height.equalTo(22)
            make.top.equalTo(lettersTextView.snp.bottom).offset(25)
            make.trailing.equalToSuperview().inset(16)
            make.leading.equalToSuperview().inset(334)
        }
        
        view.addSubview(limitTextView)
        limitTextView.snp.makeConstraints{ make in
            make.top.equalTo(lettersTextView.snp.bottom).offset(54)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        
        limitTextView.addSubview(limitTextField)
        limitTextField.snp.makeConstraints{ make in
            make.leading.equalTo(limitTextView).inset(8)
            make.trailing.equalTo(limitTextView).inset(260)
            make.top.equalTo(limitTextView.snp.top).inset(7)
            make.bottom.equalTo(limitTextView.snp.bottom).inset(7)
//            make.width.equalTo(75)
//            make.height.equalTo(22)

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
        view.addSubview(characterFieldView)
        characterFieldView.snp.makeConstraints{ make in
            make.top.equalTo(limitTextView.snp.bottom).offset(54)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        
        characterFieldView.addSubview(characterField)
        characterField.snp.makeConstraints{ make in
            make.leading.equalTo(characterFieldView).inset(8)
            make.trailing.equalTo(characterFieldView).inset(260)
            make.top.equalTo(characterFieldView.snp.top).inset(7)
            make.bottom.equalTo(characterFieldView.snp.bottom).inset(7)
            make.width.equalTo(123)
            make.height.equalTo(22)
        }
       
        /*
       
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
        
        
       */
        
    }
    
    func defaultConfiguration() {
        self.view.backgroundColor = .white
        //            return
    }
    
    
    
    
    
    
    
    
    
    
    
}

//MARK: constants
extension ViewController {
    enum Constants {
        enum LabelsSettings {
            static let lettersTextViewCornerRadius: CGFloat = 10
        }
        
        enum LabelsFonts {
            static let mainLabelFont = UIFont(name: "Rubik", size: 34)
            static let smallLabelFont = UIFont(name: "Rubik", size: 13)
           
        }
        enum LabelsTexts {
            static let mainTitleLabeText = "Text Fields"
            static let noDigitLabelText = "NO digit field"
            static let inputLimitLabelText = "Input limit"
            static let charactersCounterText = "5/10"
            static let onlyCharectersLabelText = "Only characters"
            static let smallLabelTextColor = UIColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 1)
        }
        enum LabelsBackgroundColors {
            static let labelBackgoundColors = UIColor.white
        }
        enum TextFields {
            static let lettersTextFieldText = "Type here"
            static let onlyCharectersLabelText = "wwwww-ddddd"
            
            static let textFieldFont = UIFont(name: "Rubik", size: 17)
            static let textFieldTextColor = UIColor(red: 60/255, green: 60/255, blue: 67/255, alpha: 0.6)
            static let viewBackgroundColor = UIColor(red: 118/255, green: 118/255, blue: 128/255, alpha: 0.12)
            static let textFieldBackgroundColor = UIColor(red: 118/255, green: 118/255, blue: 128/255, alpha: 0.12)
        }
        
        
        
        
        
        
        
    }
    
    
    
}
