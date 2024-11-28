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
    private let signUpView = SignUpView()
    
    override func loadView() {
        view = signUpView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setAddTarget()
    }
    
    private func setAddTarget() {
        signUpView.signUpButton.addTarget(self, action: #selector(signUpButtonTapped), for: .touchUpInside)
    }
    
    @objc func signUpButtonTapped() {
        userService.register(
            username: signUpView.userNameTextField.text!,
            password: signUpView.passwordTextField.text!,
            hobby: signUpView.hobbyTextField.text!
        ) { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                switch result {
                case .success:
                    self.showToast(message: "회원 가입 성공!") {
                        self.navigationController?.popViewController(animated: true)
                    }
                case let .failure(error):
                    self.showToast(message: error.errorMessage)
                }
            }
        }
    }
}
