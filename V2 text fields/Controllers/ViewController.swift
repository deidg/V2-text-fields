//
//  ViewController.swift
//  V2 text fields
//
//  Created by Alex on 07.02.2023.
//


// TODO: доставать и скрывать клавиатуру

import UIKit
import SnapKit
import SafariServices

//import MaskedFormatter
//import MaskedUITextField
//import Veil

class ViewController: UIViewController {//,UITextFieldDelegate {
    var digitCounter: Int = 0  //TODO: private?
    var charCounter: Int = 0   //TODO: private?
    private let maxСharacterNumber = 10
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupItemsOnView()
        defaultConfiguration()
        //        textFieldDidEndEditing(linkTextField)
        //        textFieldDidBeginEditing()
        //        let result = verifyUrl(urlString: linkTextField.text)
//                let result = verifyUrl(urlString: "http://www.dvjkbsdjkfhkdsjhf.com")
        //                let result = verifyUrl(urlString: "vjkbsdjkfhkdsjhf")
//        open(resultLink)
        //        let inputLink: String = linkTextField.text ?? ""
        //        let result = //verifyUrl(urlString: inputLink)
        //        print(result)
        
        
        
//        check3(inputLink: inputLink)

        
        
        lettersTextField.delegate = self
        limitTextField.delegate = self
        characterTextField.delegate = self
        linkTextField.delegate = self
        passwordTextField.delegate = self
        
        
        //        lettersTextField.addTarget(self,
        //                            action: #selector(textFieldDidChange(_:)),
        //                            for: .editingChanged)
        
        
        let paragraph = NSMutableParagraphStyle()
        paragraph.lineSpacing = 7.0
        let attributedString = NSMutableAttributedString(string: "Min length 8 characters.\nMin 1 digit,\nMin 1 lowercase,\nMin 1 capital required.\n")
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraph, range: NSMakeRange(0, attributedString.length))
        validationRulesLabel.attributedText = attributedString
        
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
        lettersTextField.placeholder = Constants.TextFields.lettersTextFieldPlaceholderText
        lettersTextField.textColor = Constants.TextFields.textFieldTextColor
        lettersTextField.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        lettersTextField.font = Constants.TextFields.textFieldFont
        lettersTextField.isEnabled = true
        //        lettersTextField.keyboardType = UIKeyboardType.numberPad
        
        lettersTextField.keyboardType = .alphabet
        lettersTextField.becomeFirstResponder()
        
        
        return lettersTextField
    }()
    
    
    
    //MARK:  2 field 2
    //    https://stackoverflow.com/questions/31363216/set-the-maximum-character-length-of-a-uitextfield-in-swift
    let inputLimitLabel: UILabel = {
        let inputLimitLabel = UILabel()
        inputLimitLabel.text = Constants.LabelsTexts.inputLimitLabelText
        inputLimitLabel.backgroundColor = .white
        inputLimitLabel.textColor = Constants.LabelsTexts.smallLabelTextColor
        inputLimitLabel.font = Constants.LabelsFonts.smallLabelFont
        return inputLimitLabel
    }()
    var charactersCounter: UILabel = {
        let charactersCounter = UILabel()
        charactersCounter.backgroundColor = .white
        //                charactersCounter.text = "\(charCounter)/10" //Constants.LabelsTexts.charactersCounterText
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
        limitTextField.placeholder = Constants.TextFields.lettersTextFieldPlaceholderText
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
    let characterTextView: UIView = {
        let characterTextView = UIView()
        characterTextView.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        characterTextView.layer.cornerRadius = Constants.LabelsSettings.lettersTextViewCornerRadius
        return characterTextView
    }()
    let characterTextField: UITextField = {
        let characterTextField = UITextField()
        characterTextField.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        characterTextField.placeholder = Constants.TextFields.onlyCharectersLabelPlaceholderText
        characterTextField.textColor = Constants.TextFields.textFieldTextColor
        characterTextField.font = Constants.TextFields.textFieldFont
        return characterTextField
    }()
    
    //MARK:  4 field 4  LINK
    let linkLabel: UILabel = {
        let linkLabel = UILabel()
        linkLabel.text = Constants.LabelsTexts.linkLabelText
        linkLabel.backgroundColor = .white
        linkLabel.textColor = Constants.LabelsTexts.smallLabelTextColor
        linkLabel.font = Constants.LabelsFonts.smallLabelFont
        return linkLabel
    }()
    
    let linkTextView: UIView = {
        let linkTextView = UIView()
        linkTextView.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        linkTextView.layer.cornerRadius = Constants.LabelsSettings.lettersTextViewCornerRadius
        return linkTextView
    }()
    let linkTextField: UITextField = {
        let linkTextField = UITextField()
        linkTextField.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        linkTextField.placeholder = Constants.TextFields.linkTextFieldPlaceholderText
        linkTextField.textColor = Constants.TextFields.textFieldTextColor
        linkTextField.font = Constants.TextFields.textFieldFont
        return linkTextField
    }()
    
    //MARK:  5 field 5  PASSWORDS
    let validationLabel: UILabel = {
        let validationLabel = UILabel()
        validationLabel.text = Constants.LabelsTexts.validationLabelText
        validationLabel.backgroundColor = .white
        validationLabel.textColor = Constants.LabelsTexts.smallLabelTextColor
        validationLabel.font = Constants.LabelsFonts.smallLabelFont
        return validationLabel
    }()
    let passwordTextView: UIView = {
        let passwordTextView = UIView()
        passwordTextView.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        passwordTextView.layer.cornerRadius = Constants.LabelsSettings.lettersTextViewCornerRadius
        return passwordTextView
    }()
    let passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.backgroundColor = Constants.TextFields.textFieldBackgroundColor
        passwordTextField.placeholder = Constants.TextFields.passwordTextFieldPlaceholderText
        passwordTextField.textColor = Constants.TextFields.textFieldTextColor
        passwordTextField.font = Constants.TextFields.textFieldFont
        return passwordTextField
    }()
    let validationRulesLabel: UILabel = {
        let validationRulesLabel = UILabel()
        validationRulesLabel.numberOfLines = 4
        validationRulesLabel.backgroundColor = .white
        validationRulesLabel.font = Constants.LabelsFonts.smallLabelFont
        validationRulesLabel.text = Constants.LabelsTexts.validationRulesLabelText
        validationRulesLabel.textColor = Constants.LabelsTexts.validationRulesLabelTextColor
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
            make.top.equalTo(lettersTextView.snp.top).inset(7)
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
        view.addSubview(characterTextView)
        characterTextView.snp.makeConstraints{ make in
            make.top.equalTo(limitTextView.snp.bottom).offset(54)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        
        characterTextView.addSubview(characterTextField)
        characterTextField.snp.makeConstraints{ make in
            make.leading.equalTo(characterTextView).inset(8)
            //            make.trailing.equalTo(characterFieldView).inset(260)
            make.top.equalTo(characterTextView.snp.top).inset(7)
            make.bottom.equalTo(characterTextView.snp.bottom).inset(7)
            make.width.equalTo(200)  //123
            make.height.equalTo(22)
        }
        
        // 4 field 4 LINK
        view.addSubview(linkLabel)
        linkLabel.snp.makeConstraints{ make in
            make.width.equalTo(24)
            make.height.equalTo(20)
            make.top.equalTo(characterTextView.snp.bottom).offset(30)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(335)
        }
        
        view.addSubview(linkTextView)
        linkTextView.snp.makeConstraints{ make in
            make.top.equalTo(characterTextView.snp.bottom).offset(54)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        
        linkTextView.addSubview(linkTextField)
        linkTextField.snp.makeConstraints{ make in
            make.leading.equalTo(linkTextView).inset(8)
            //            make.trailing.equalTo(linkTextView).inset(260)
            make.top.equalTo(linkTextView.snp.top).inset(7)
            make.bottom.equalTo(linkTextView.snp.bottom).inset(7)
            make.width.equalTo(200) //144
            make.height.equalTo(22)
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
        view.addSubview(passwordTextView)
        passwordTextView.snp.makeConstraints{ make in
            make.top.equalTo(linkTextField.snp.bottom).offset(53)
            make.leading.trailing.equalToSuperview().inset(16)
            make.width.equalTo(343)
            make.height.equalTo(36)
        }
        passwordTextView.addSubview(passwordTextField)
        passwordTextField.snp.makeConstraints{ make in
            make.leading.equalTo(passwordTextView).inset(8)
            //            make.trailing.equalTo(passwordTextView).inset(260)
            make.top.equalTo(passwordTextView.snp.top).inset(7)
            make.bottom.equalTo(passwordTextView.snp.bottom).inset(7)
            make.width.equalTo(200) //144
            make.height.equalTo(22)
        }
        view.addSubview(validationRulesLabel)
        validationRulesLabel.snp.makeConstraints{ make in
            make.top.equalTo(passwordTextView.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(24)
            //            make.trailing.equalToSuperview().inset(213)
            //            make.trailing.equalToSuperview().inset(213)
            make.width.equalTo(160)
            make.height.equalTo(88)
        }
    }
    
    func defaultConfiguration() {
        self.view.backgroundColor = .white
    }
 
    
    
}

//func
 
//let resultLink: String = "http://www.google.com"
//
//func open(string: String){
//    if let url = URL(string: resultLink) {
//        UIApplication.shared.open(url)
//    }
//}

//"https://www.hackingwithswift.com") {




//func canOpenURL(_ urlString: String) -> Bool {
//    guard let url = URL(string: urlString) else { return false }
//
//    if UIApplication.shared.open(<#T##url: URL##URL#>) == true {
//        print("Its a link")
//        return true
//    } else {
//        print("Its NOT a link")
//        return false
//    }
//}

//let resultLink = canOpenURL("www.google.com")
//print("resultLink - \(resultLink)")
//


//func openLink(string: String) {
//    if let url = URL(string: result) {
//        UIApplication.shared.open(url)
//    }
//}
//
////"https://www.hackingwithswift.com") {









    //MARK: extension ViewController
extension ViewController: UITextFieldDelegate {
    //constants
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
            static let onlyCharectersLabelText = "Only characters"
            static let linkLabelText = "Link"
            static let validationLabelText = "Validation rules"
            static let validationRulesLabelText = "Min length 8 characters.\nMin 1 digit,\nMin 1 lowercase,\nMin 1 capital required.\n"
            
            
            
            static let smallLabelTextColor = UIColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 1)
            static let validationRulesLabelTextColor = UIColor(red: 87/255, green: 87/255, blue: 87/255, alpha: 1)
        }
        enum LabelsBackgroundColors {
            static let labelBackgoundColors = UIColor.white
        }
        enum TextFields {
            static let lettersTextFieldPlaceholderText = "Type here"
            static let onlyCharectersLabelPlaceholderText = "wwwww-ddddd"
            static let linkTextFieldPlaceholderText = "www.example.com"
            static let passwordTextFieldPlaceholderText = "Password"
            
            static let textFieldFont = UIFont(name: "Rubik", size: 17)
            static let textFieldTextColor = UIColor(red: 60/255, green: 60/255, blue: 67/255, alpha: 0.6)
            static let viewBackgroundColor = UIColor(red: 118/255, green: 118/255, blue: 128/255, alpha: 0.12)
            static let textFieldBackgroundColor = UIColor(red: 118/255, green: 118/255, blue: 128/255, alpha: 0.12)
        }
    }
    
    //        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    //            view.endEditing(true)
    //        }
    
    
    //}
    
    
    
    //extension ViewController {
    
    
    
    
    //}
    
    
    
    
    //    textfield 1  DONE
    //            func textField(_ lettersTextField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    //            return (string.containsValidCharacter)
    //        }
    
    //    textfield 2  DONE
    //        func textField(_ limitTextField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    //            let currentText = limitTextField.text ?? ""
    //            guard let stringRange = Range(range, in: currentText) else { return false }
    //
    //            let updatedText = currentText.replacingCharacters(in: stringRange, with: string)
    //            charCounter = updatedText.count
    //            charactersCounter.text = "\(charCounter)/10"
    //            return updatedText.count < 10
    //        }
    
    
    //    textfield 3  NOT DONE
    //func matches(_ regex: String) -> Bool{
    //        return self.range(of: regex, options: .regularExpression, range: nil, locale: nil) != nil
    //
    //    }
    
    //  4 field 4  LINK
    //    func textFieldDidBeginEditing(_ textField: UITextField) {
    //        print("TF #4 started editing")
    //    }
//    func textFieldDidEndEditing(_ textField: UITextField) {

        
//        if textField == linkTextField {
//
//            let inputLink: String = linkTextField.text ?? ""
//            print("\(inputLink)")
            
//            func open(string: String){
//                       if let url = URL(string: inputLink) {
//                           UIApplication.shared.open(url)
//                       }
//                   }
//        }
//    }
   
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
                print("didEndEditing")

//        if textField == linkTextField {
        
                    let inputLink: String = linkTextField.text ?? ""
                    print("\(inputLink)")
                    
                    func open(string: String){
                               if let url = URL(string: inputLink) {
                                   UIApplication.shared.open(url)
                               }
                           }
                }
        
        
    }
    
       
        
//        print("TF #4 ENDED editing")
        
        
        //
        ////        let resultLink: String = "http://www.google.com"
        //
//
        
//    }
        
        
        //        if inputLink.starts(with: "www.") {//&& inputLink.contains(where: ".") {
        //            print("ok")
        //        } else {
        //            print("no")
        //        }
        
        //        func verifyUrl (urlString: String?) -> Bool {
        //            if let urlString = urlString {
        //                if let url = NSURL(string: urlString) {
        //                    return !UIApplication.shared.canOpenURL(url as URL)
        //                }
        //            }
        //            return false
        
//    }
    
    
    
    
    //MARK: keyboard
    
    
    //    let chackFunc
    
    
    
    
    
    //}
    
    
    // MARK: Extension String
    
    //https://stackoverflow.com/questions/35049322/how-do-i-validate-an-url
    extension String {
        // for textField4  - link
        var isValidURL: Bool {
            let detector = try! NSDataDetector(types: NSTextCheckingResult.CheckingType.link.rawValue)
            if let match = detector.firstMatch(in: self, options: [], range: NSRange(location: 0, length: self.utf16.count)) {
                // it is a link, if the match covers the whole string
                return match.range.length == self.utf16.count
            } else {
                return false
            }
        }
        //    let inputLink = "https://www.fs.blog/2017/02/naval-ravikant-reading-decision-making/"
        //    func check3(){
        //        if inputLink.isValidURL == true {
        //            print("This link valid!!!")
        //        } else {
        //            print("foo")
        //        }
        //    }
        
        
        
        
        
        
        
        
        
        
        
    }

