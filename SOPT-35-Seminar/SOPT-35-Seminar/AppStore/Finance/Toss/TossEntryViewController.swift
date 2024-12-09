//
//  TossEntryViewController.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 10/25/24.
//

import UIKit
import Then
import SnapKit
import SwiftUI

class TossEntryViewController: UIViewController {

    private lazy var entryButton = UIButton().then {
        $0.setTitle("금융 정보 보기", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.addTarget(self, action: #selector(tossEntryTap), for: .touchUpInside)
        $0.backgroundColor = .tintColor
    }
    
    private lazy var swiftUIEntryButton = UIButton().then {
        $0.setTitle("SwiftUI", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.addTarget(self, action: #selector(chartEntryTap), for: .touchUpInside)
        $0.backgroundColor = .tintColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setStyle()
        setUI()
        setLayout()
        configureNavigationBar()
    }
    
    func setStyle() {
        self.view.backgroundColor = .white
    }
    
    func setUI() {
        self.view.addSubviews(entryButton, swiftUIEntryButton)
    }
    
    func setLayout() {
        entryButton.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.equalTo(200)
            $0.height.equalTo(50)
        }
        
        swiftUIEntryButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(entryButton.snp.bottom).offset(50)
            $0.width.equalTo(200)
            $0.height.equalTo(50)
        }
    }
    
    private func configureNavigationBar() {
        navigationItem.backButtonTitle = "앱"
    }
    
    @objc func tossEntryTap() {
        let nextViewController = FinanceCateViewController()
        
        self.navigationController?.pushViewController(nextViewController, animated: true)
    }
    
    @objc func chartEntryTap() {
        let financeChartView = FinanceChartView()
        let hostingController = UIHostingController(rootView: financeChartView)
        
        navigationController?.pushViewController(hostingController, animated: true)
    }
    
}
