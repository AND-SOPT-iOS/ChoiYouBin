//
//  DownloadState.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 10/26/24.
//

import Foundation

enum DownloadState {
    case installed
    case download
    case redownload
    case update
    
    var title: String {
        switch self {
        case .installed:
            return "열기"
        case .download:
            return "받기"
        case .redownload:
            return "재 다운"
        case .update:
            return "업데이트"
        }
    }

}
