//
//  HobbyViewController.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import UIKit
import Then
import SnapKit

class HobbyViewController: UIViewController {
    
    private let userService = UserService()
    private let hobbyView = HobbyView()
    
    override func loadView() {
        view = hobbyView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setAddTarget()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getMyHobby()
    }
    
    private func setAddTarget() {
        hobbyView.changeHobbyButton.addTarget(self, action: #selector(navigateToChange), for: .touchUpInside)
        
        hobbyView.searchButton.addTarget(self, action: #selector(getOtherHobby), for: .touchUpInside)
    }
    
    private func getMyHobby() {
        userService.getMyHobby { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                switch result {
                case .success(let hobbyResponse):
                    self.hobbyView.hobbyLabel.text = hobbyResponse.result.hobby
                case .failure(let error):
                    self.hobbyView.hobbyLabel.text = "취미 정보 없음"
                    self.showToast(message: "취미를 불러오지 못했습니다: \(error.errorMessage)")
                }
            }
        }
    }
    
    @objc func getOtherHobby() {
        guard let userNoString = hobbyView.numberTextField.text,
              let userNo = Int(userNoString) else {
            showToast(message: "올바른 사용자 번호를 입력해주세요.")
            return
        }
        
        userService.getOtherHobby(userNo: userNo) { [weak self] result in
            DispatchQueue.main.async {
                guard let self = self else { return }
                
                switch result {
                case .success(let hobbyResponse):
                    self.hobbyView.otherHobbyLabel.text = hobbyResponse.result.hobby
                case .failure:
                    self.hobbyView.otherHobbyLabel.text = "취미 정보 없음"
                    self.showToast(message: "취미 호출 실패")
                }
            }
        }
    }
    
    @objc func navigateToChange() {
        let nextViewController = ChangeHobbyViewController()
        navigationItem.backButtonTitle = "취미"
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
}
