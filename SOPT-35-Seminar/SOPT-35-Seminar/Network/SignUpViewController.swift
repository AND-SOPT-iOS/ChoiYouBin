//
//  SignUpViewController.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import UIKit
import Then
import SnapKit

class SignUpViewController: UIViewController {

    private let userService = UserService()
    private let userNameTextField = UITextField()
    private let signUpButton = UIButton()
    private let resultLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setStyle()
        setUI()
        setLayout()
    }
    
    private func setStyle() {
        self.view.backgroundColor = .white
        userNameTextField.do {
            $0.placeholder = "userName"
            $0.font = .systemFont(ofSize: 12)
            $0.borderStyle = .line
            $0.textColor = .black
            $0.backgroundColor = .white
        }
        signUpButton.do {
            $0.setTitle("회원가입", for: .normal)
            $0.setTitleColor(.white, for: .normal)
            $0.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
            $0.backgroundColor = .tintColor
        }
        resultLabel.do {
            $0.font = .systemFont(ofSize: 14)
            $0.textColor = .black
        }
    }
    
    private func setUI() {
        self.view.addSubviews(signUpButton, userNameTextField, resultLabel)
    }
    
    private func setLayout() {
        signUpButton.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
        userNameTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.bottom.equalTo(signUpButton.snp.top).offset(-20)
        }
        resultLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(signUpButton.snp.bottom).offset(20)
        }
        
    }
    
    @objc func signUpButtonTapped() {
      userService.register(
        username: userNameTextField.text!,
        password: "123",
        hobby: "123"
      ) { [weak self] result in
        DispatchQueue.main.async {
          guard let self = self else { return }

          var text: String
          switch result {
          case .success:
            text = "회원 등록 성공했어요."
          case let .failure(error):
            text = error.errorMessage
          }
          self.resultLabel.text = text
        }
      }
    }

}
