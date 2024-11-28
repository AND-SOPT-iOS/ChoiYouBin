//
//  SignUpView.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/11/24.
//

import UIKit

class SignUpView: UIView {

    private let userService = UserService()
    private let titleLabel = UILabel()
    private let userNameLabel = UILabel()
    let userNameTextField = UITextField()
    private let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    private let hobbyLabel = UILabel()
    let hobbyTextField = UITextField()
    let signUpButton = UIButton()
    
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
            $0.text = "회원가입"
            $0.textColor = .gray
            $0.font = .systemFont(ofSize: 40, weight: .bold)
        }
        userNameLabel.do {
            $0.text = "유저이름"
            $0.textColor = .black
            $0.font = .systemFont(ofSize: 14)
        }
        userNameTextField.do {
            $0.placeholder = "userName"
            $0.font = .systemFont(ofSize: 14)
            $0.textColor = .black
            $0.backgroundColor = .white
            $0.layer.borderWidth = 1.0
            $0.layer.borderColor = UIColor.gray.cgColor
            $0.layer.cornerRadius = 5.0
            $0.addLeftPadding()
        }
        passwordLabel.do {
            $0.text = "비밀번호"
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
        hobbyLabel.do {
            $0.text = "취미"
            $0.textColor = .black
            $0.font = .systemFont(ofSize: 14)
        }
        hobbyTextField.do {
            $0.placeholder = "hobby"
            $0.font = .systemFont(ofSize: 14)
            $0.textColor = .black
            $0.backgroundColor = .white
            $0.layer.borderWidth = 1.0
            $0.layer.borderColor = UIColor.gray.cgColor
            $0.layer.cornerRadius = 5.0
            $0.addLeftPadding()
        }
        signUpButton.do {
            $0.setTitle("회원가입", for: .normal)
            $0.setTitleColor(.white, for: .normal)
            $0.backgroundColor = .tintColor
            $0.layer.cornerRadius = 5.0
        }
    }
    
    private func setUI() {
        addSubviews(titleLabel, userNameLabel,userNameTextField, passwordLabel, passwordTextField, signUpButton, hobbyLabel, hobbyTextField)
    }
    
    private func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(100)
            $0.centerX.equalToSuperview()
        }
        userNameLabel.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(50)
            $0.leading.equalToSuperview().offset(20)
        }
        userNameTextField.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.height.equalTo(40)
            $0.top.equalTo(userNameLabel.snp.bottom).offset(5)
        }
        passwordLabel.snp.makeConstraints {
            $0.leading.equalTo(userNameLabel)
            $0.top.equalTo(userNameTextField.snp.bottom).offset(20)
        }
        passwordTextField.snp.makeConstraints {
            $0.horizontalEdges.height.equalTo(userNameTextField)
            $0.top.equalTo(passwordLabel.snp.bottom).offset(5)
        }
        hobbyLabel.snp.makeConstraints {
            $0.leading.equalTo(userNameLabel)
            $0.top.equalTo(passwordTextField.snp.bottom).offset(20)
        }
        hobbyTextField.snp.makeConstraints {
            $0.horizontalEdges.height.equalTo(userNameTextField)
            $0.top.equalTo(hobbyLabel.snp.bottom).offset(5)
        }
        signUpButton.snp.makeConstraints {
            $0.horizontalEdges.equalTo(userNameTextField)
            $0.height.equalTo(50)
            $0.top.equalTo(hobbyTextField.snp.bottom).offset(20)
        }
        
    }
}
