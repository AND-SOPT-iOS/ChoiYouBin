//
//  UserDTO.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import Foundation

struct RegisterRequest: Codable {
    let username: String
    let password: String
    let hobby: String
}

struct LoginRequest: Codable {
    let username: String
    let password: String
}
