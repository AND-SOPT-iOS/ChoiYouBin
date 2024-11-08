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
    
    private let titleLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        setStyle()
        setUI()
        setLayout()
    }
    
    private func setStyle() {
        self.view.backgroundColor = .white
        titleLabel.do {
            $0.text = "hobby"
            $0.font = .systemFont(ofSize: 30)
        }
    }
    
    private func setUI() {
        self.view.addSubview(titleLabel)
    }
    
    private func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.center.equalToSuperview()
        }
    }
}
