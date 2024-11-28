//
//  HobbyView.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/16/24.
//

import UIKit

class HobbyView: UIView {

    private let horizontalDivider = UIView()
    private let titleLabel = UILabel()
    let hobbyLabel = UILabel()
    let changeHobbyButton = UIButton()
    private let secondHorizontalDivider = UIView()
    private let otherTitleLabel = UILabel()
    let otherHobbyLabel = UILabel()
    private let numberLabel = UILabel()
    let numberTextField = UITextField()
    let searchButton = UIButton()
    
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
            $0.text = "내 취미"
            $0.font = .systemFont(ofSize: 30, weight: .bold)
            $0.textColor = .black
        }
        horizontalDivider.do {
            $0.backgroundColor = .gray
        }
        hobbyLabel.do {
            $0.text = ""
            $0.font = .systemFont(ofSize: 20, weight: .bold)
            $0.textColor = .tintColor
        }
        changeHobbyButton.do {
            $0.setTitle("취미 변경하기", for: .normal)
            $0.setTitleColor(.gray, for: .normal)
            $0.titleLabel?.font = .systemFont(ofSize: 16)
        }
        otherTitleLabel.do {
            $0.text = "다른 사람 취미 검색"
            $0.font = .systemFont(ofSize: 30, weight: .bold)
            $0.textColor = .black
        }
        secondHorizontalDivider.do {
            $0.backgroundColor = .gray
        }
        otherHobbyLabel.do {
            $0.text = "다른 사람 취미"
            $0.font = .systemFont(ofSize: 20, weight: .bold)
            $0.textColor = .tintColor
        }
        numberLabel.do {
            $0.text = "검색하고 싶은 번호를 입력해주세요"
            $0.font = .systemFont(ofSize: 12)
            $0.textColor = .black
        }
        numberTextField.do {
            $0.placeholder = "번호 입력"
            $0.font = .systemFont(ofSize: 12)
            $0.textColor = .black
            $0.backgroundColor = .white
            $0.layer.borderWidth = 1.0
            $0.layer.borderColor = UIColor.gray.cgColor
            $0.layer.cornerRadius = 5.0
            $0.addLeftPadding()
        }
        searchButton.do {
            $0.setTitle("검색 하기", for: .normal)
            $0.setTitleColor(.gray, for: .normal)
            $0.titleLabel?.font = .systemFont(ofSize: 12)
        }
    }
    
    private func setUI() {
        addSubviews(titleLabel, horizontalDivider, hobbyLabel, changeHobbyButton, otherTitleLabel, secondHorizontalDivider, otherHobbyLabel, numberLabel, numberTextField, searchButton)
    }
    
    private func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(20)
            $0.top.equalToSuperview().offset(100)
        }
        horizontalDivider.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.height.equalTo(1)
            $0.top.equalTo(titleLabel.snp.bottom).offset(5)
        }
        hobbyLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(horizontalDivider.snp.bottom).offset(20)
        }
        changeHobbyButton.snp.makeConstraints {
            $0.bottom.equalTo(titleLabel.snp.bottom)
            $0.trailing.equalToSuperview().offset(-20)
        }
        otherTitleLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(20)
            $0.top.equalTo(hobbyLabel.snp.bottom).offset(50)
        }
        secondHorizontalDivider.snp.makeConstraints {
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.height.equalTo(1)
            $0.top.equalTo(otherTitleLabel.snp.bottom).offset(5)
        }
        searchButton.snp.makeConstraints {
            $0.centerY.equalTo(numberLabel)
            $0.trailing.equalToSuperview().offset(-20)
        }
        numberLabel.snp.makeConstraints {
            $0.leading.equalTo(otherTitleLabel)
            $0.top.equalTo(secondHorizontalDivider.snp.bottom).offset(20)
        }
        numberTextField.snp.makeConstraints {
            $0.top.equalTo(numberLabel.snp.bottom).offset(10)
            $0.horizontalEdges.equalToSuperview().inset(20)
            $0.height.equalTo(40)
        }
        otherHobbyLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(numberTextField.snp.bottom).offset(20)
        }
    }
}
