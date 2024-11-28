//
//  Environment.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import Foundation

enum Environment {
    static let baseURL: String = Bundle.main.infoDictionary?["BASE_URL"] as! String 
}
