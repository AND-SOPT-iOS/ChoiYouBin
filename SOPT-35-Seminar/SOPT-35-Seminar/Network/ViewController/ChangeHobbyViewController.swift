//
//  ChangeHobbyViewController.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import UIKit
import Then
import SnapKit

class ChangeHobbyViewController: UIViewController {

    private let userService = UserService()
    private let changeHobbyView = ChangeHobbyView()
    
    override func loadView() {
        view = changeHobbyView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setAddTarget()
    }
    
    private func setAddTarget() {
        changeHobbyView.changeButton.addTarget(self, action: #selector(changeButtonTapped), for: .touchUpInside)
    }
    
    @objc func changeButtonTapped() {
        userService.changeHobby(
            hobby: changeHobbyView.changeHobbyTextField.text!,
            password: changeHobbyView.passwordTextField.text!
        ) { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                switch result {
                case .success:
                    self.showToast(message: "취미 변경 성공!") {
                        self.navigationController?.popViewController(animated: true)
                    }
                case let .failure(error):
                    self.showToast(message: error.errorMessage)
                }
            }
        }
    }
    
}
