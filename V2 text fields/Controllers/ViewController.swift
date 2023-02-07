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
        titleLabel.text = "Text Fields"
        titleLabel.font = UIFont(name: "Rubik", size: 34)
        
        return titleLabel
    }()
    
    let noDigitLabel: UILabel = {
        let noDigitLabel = UILabel()
        noDigitLabel.text = "NO digit field"
        
        return noDigitLabel
    }()
    let lettersTextField: UITextField = {
        let lettersTextField = UITextField()
        
        
        return lettersTextField
    }()
    
    let inputLimitLabel: UILabel = {
        let inputLimitLabel = UILabel()
        
        
        return inputLimitLabel
    }()
    let limitTextField: UITextField = {
        let limitTextField = UITextField()
        
        
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
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(92)
            //      make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(64)
            make.trailing.leading.equalToSuperview().inset(16)
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
    
    

