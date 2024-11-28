//
//  ChangeHobbyView.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/16/24.
//

import UIKit

class ChangeHobbyView: UIView {

    private let titleLabel = UILabel()
    private let changeLabel = UILabel()
    let changeHobbyTextField = UITextField()
    private let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let changeButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setStyle()
        setUI()
        setLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setStyle() {
        backgroundColor = .white
        
        titleLabel.do {
            $0.text = "취미 변경"
            $0.textColor = .gray
            $0.font = .systemFont(ofSize: 28, weight: .bold)
        }
        changeLabel.do {
            $0.text = "변경할 취미 입력"
            $0.textColor = .black
            $0.font = .systemFont(ofSize: 14)
        }
        changeHobbyTextField.do {
            $0.placeholder = "hobby"
            $0.font = .systemFont(ofSize: 14)
            $0.textColor = .black
            $0.backgroundColor = .white
            $0.layer.borderWidth = 1.0
            $0.layer.borderColor = UIColor.gray.cgColor
            $0.layer.cornerRadius = 5.0
            $0.addLeftPadding()
        }
        passwordLabel.do {
            $0.text = "비밀번호 확인"
            $0.textColor = .black
            $0.font = .systemFont(ofSize: 14)
        }
        passwordTextField.do {
            $0.placeholder = "password"
            $0.font = .systemFont(ofSize: 14)
            $0.textColor = .black
            $0.backgroundColor = .white
            $0.layer.borderWidth = 1.0
            $0.layer.borderColor = UIColor.gray.cgColor
            $0.layer.cornerRadius = 5.0
            $0.isSecureTextEntry = true
            $0.addLeftPadding()
        }
        changeButton.do {
            $0.setTitle("변경하기", for: .normal)
            $0.setTitleColor(.white, for: .normal)
            $0.backgroundColor = .tintColor
            $0.layer.cornerRadius = 5.0
        }
    }
    
    private func setUI() {
        addSubviews(titleLabel, changeLabel, changeHobbyTextField, passwordLabel, passwordTextField, changeButton)
    }
    
    private func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.centerX.equalToSuperview()
        }
        changeLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(50)
            $0.leading.equalToSuperview().offset(20)
        }
        changeHobbyTextField.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.height.equalTo(40)
            $0.top.equalTo(changeLabel.snp.bottom).offset(5)
        }
        passwordLabel.snp.makeConstraints {
            $0.leading.equalTo(changeLabel)
            $0.top.equalTo(changeHobbyTextField.snp.bottom).offset(20)
        }
        passwordTextField.snp.makeConstraints {
            $0.horizontalEdges.height.equalTo(changeHobbyTextField)
            $0.top.equalTo(passwordLabel.snp.bottom).offset(5)
        }
        changeButton.snp.makeConstraints {
            $0.horizontalEdges.equalTo(changeHobbyTextField)
            $0.height.equalTo(50)
            $0.top.equalTo(passwordTextField.snp.bottom).offset(20)
        }
    }
    
}
