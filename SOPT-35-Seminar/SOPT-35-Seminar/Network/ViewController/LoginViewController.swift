//
//  LoginViewController.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import UIKit

class LoginViewController: UIViewController {

    private let userService = UserService()
    private let loginView = LoginView()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setAddTarget()
    }
    
    private func setAddTarget() {
        loginView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
        
        loginView.signUpButton.addTarget(self, action: #selector(navigateToSignUp), for: .touchUpInside)
    }
    
    @objc func loginButtonTapped() {
        userService.login(
            username: loginView.userNameTextField.text!,
            password: loginView.passwordTextField.text!
        ) { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                switch result {
                case .success(let loginResponse):
                    let token = loginResponse.result.token
                    TokenManager.shared.saveToken(token)
                    self.showToast(message: "로그인 성공!") {
                        let tabBarController = TabBarController()
                        (UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate)?.changeRootViewController(tabBarController)
                    }
                case let .failure(error):
                    self.showToast(message: error.errorMessage)
                }
            }
        }
    }
    
    @objc func navigateToSignUp() {
        let nextViewController = SignUpViewController()
        navigationItem.backButtonTitle = "로그인"
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
}
