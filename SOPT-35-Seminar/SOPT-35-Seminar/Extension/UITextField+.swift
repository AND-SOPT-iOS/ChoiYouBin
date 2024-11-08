//
//  UITextField.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import UIKit

extension UITextField {
    func addLeftPadding() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = paddingView
        self.leftViewMode = ViewMode.always
    }
}
