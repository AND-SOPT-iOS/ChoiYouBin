//
//  TokenManger.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import Foundation

class TokenManager {
    static let shared = TokenManager()
    
    private init() {}
    
    private let tokenKey = "userToken"
    
    func saveToken(_ token: String) {
        UserDefaults.standard.set(token, forKey: tokenKey)
    }
    
    func getToken() -> String? {
        return UserDefaults.standard.string(forKey: tokenKey)
    }
    
    func deleteToken() {
        UserDefaults.standard.removeObject(forKey: tokenKey)
    }
    
    var isLoggedIn: Bool {
        return getToken() != nil
    }
}
