//
//  HobbyDTO.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import Foundation

struct HobbyResponse: Codable {
    let result: HobbyResult
}

struct HobbyResult: Codable {
    let hobby: String
}

struct HobbyRequest: Codable {
    let hobby: String
    let password: String
}
