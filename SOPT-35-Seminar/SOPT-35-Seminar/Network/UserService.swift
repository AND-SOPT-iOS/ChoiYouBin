//
//  UserService.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/8/24.
//

import Foundation
import Alamofire

class UserService {
    
    func register(
        username: String,
        password: String,
        hobby: String,
        completion: @escaping (Result<Bool, NetworkError>) -> Void
    ) {
        
        let url = Environment.baseURL + "/user"
        
        let parameters = RegisterRequest(
            username: username,
            password: password,
            hobby: hobby
        )
        
        AF.request(
            url,
            method: .post,
            parameters: parameters,
            encoder: JSONParameterEncoder.default
        )
        .validate()
        .response { [weak self] response in
            
            guard let statusCode = response.response?.statusCode,
                  let data = response.data,
                  let self
            else {
                completion(.failure(.unknownError))
                return
            }
            
            switch response.result {
            case .success:
                completion(.success(true))
            case .failure:
                let error = self.handleStatusCode(statusCode, data: data)
                completion(.failure(error))
            }
        }
    }
    
    func login(
        username: String,
        password: String,
        completion: @escaping (Result<LoginResponse, NetworkError>) -> Void
    ) {
        let url = Environment.baseURL + "/login"
        
        let parameters = LoginRequest(
            username: username,
            password: password
        )
        
        AF.request(
            url,
            method: .post,
            parameters: parameters,
            encoder: JSONParameterEncoder.default
        )
        .validate()
        .responseDecodable(of: LoginResponse.self) { [weak self] response in
            
            switch response.result {
            case .success(let loginResponse):
                completion(.success(loginResponse))
            case .failure:
                guard let statusCode = response.response?.statusCode,
                      let data = response.data,
                      let self
                else {
                    completion(.failure(.unknownError))
                    return
                }
                let error = self.handleStatusCode(statusCode, data: data)
                completion(.failure(error))
            }
        }
    }
    
    func getMyHobby(
        completion: @escaping (Result<HobbyResponse, NetworkError>) -> Void
    ) {
        guard let token = TokenManager.shared.getToken() else {
            completion(.failure(.unknownError))
            return
        }
        
        let url = Environment.baseURL + "/user/my-hobby"
        
        let headers: HTTPHeaders = [
            "Content-Type": "application/json",
            "token": token
        ]
        
        AF.request(
            url,
            method: .get,
            headers: headers
        )
        .validate()
        .responseDecodable(of: HobbyResponse.self) { [weak self] response in
        
            switch response.result {
            case .success(let hobbyResponse):
                completion(.success(hobbyResponse))
            case .failure:
                guard let statusCode = response.response?.statusCode,
                      let data = response.data,
                      let self
                else {
                    completion(.failure(.unknownError))
                    return
                }
                let error = self.handleStatusCode(statusCode, data: data)
                completion(.failure(error))
            }
        }
    }
    
    func getOtherHobby(
        userNo: Int,
        completion: @escaping (Result<HobbyResponse, NetworkError>) -> Void
    ) {
        guard let token = TokenManager.shared.getToken() else {
            completion(.failure(.unknownError))
            return
        }
        
        let url = Environment.baseURL + "/user/\(userNo)/hobby"
        
        let headers: HTTPHeaders = [
            "Content-Type": "application/json",
            "token": token
        ]
        
        AF.request(
            url,
            method: .get,
            headers: headers
        )
        .validate()
        .responseDecodable(of: HobbyResponse.self) { [weak self] response in
            guard let self = self else { return }
            
            switch response.result {
            case .success(let hobbyResponse):
                completion(.success(hobbyResponse))
            case .failure:
                guard let statusCode = response.response?.statusCode,
                      let data = response.data else {
                    completion(.failure(.unknownError))
                    return
                }
                let error = self.handleStatusCode(statusCode, data: data)
                completion(.failure(error))
            }
        }
    }
    
    func changeHobby(
        hobby: String,
        password: String,
        completion: @escaping (Result<Bool, NetworkError>) -> Void
    ) {
        guard let token = TokenManager.shared.getToken() else {
            completion(.failure(.unknownError))
            return
        }
        
        let url = Environment.baseURL + "/user"
        
        let headers: HTTPHeaders = [
            "Content-Type": "application/json",
            "token": token
        ]
        
        let parameters = HobbyRequest(
            hobby: hobby,
            password: password
        )
        
        AF.request(
            url,
            method: .put,
            parameters: parameters,
            encoder: JSONParameterEncoder.default,
            headers: headers
        )
        .validate()
        .response { response in
            switch response.result {
            case .success:
                completion(.success(true))
            case .failure:
            guard let statusCode = response.response?.statusCode,
                  let data = response.data else {
                    completion(.failure(.unknownError))
                    return
                }
                let error = self.handleStatusCode(statusCode, data: data)
                completion(.failure(error))
            }
        }
    }
    
    /// 서버의 명세서 기반으로 에러 처리를 진행해줌
    func handleStatusCode(
        _ statusCode: Int,
        data: Data
    ) -> NetworkError {
        let errorCode = decodeError(data: data)
        switch (statusCode, errorCode) {
        case (400, "00"):
            return .invalidRequest
        case (400, "01"):
            return .expressionError
        case (404, ""):
            return .invalidURL
        case (409, "00"):
            return .duplicateError
        case (500, ""):
            return .serverError
        default:
            return .unknownError
        }
    }
    
    func decodeError(data: Data) -> String {
        guard let errorResponse = try? JSONDecoder().decode(
            ErrorResponse.self,
            from: data
        ) else { return "" }
        return errorResponse.code
    }
}
