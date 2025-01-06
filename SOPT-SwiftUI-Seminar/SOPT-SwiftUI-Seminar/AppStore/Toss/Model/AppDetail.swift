//
//  AppDetail.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/6/24.
//

import SwiftUI

struct AppDetail {
    let iconImage: Image
    let appTitle: String
    let appSubTitle: String
    let rating: String
    let ratingCount: String
    let version: String
    let updateNotes: String
    let previewImage: Image
}

extension AppDetail {
    static let tossAppDetail: AppDetail =
        AppDetail(iconImage: Image(.tossIcon), appTitle: "토스", appSubTitle: "금융이 쉬워진다", rating: "4.4", ratingCount: "8.4", version: "버전 5.191.0", updateNotes: "• 구석구석 숨어있던 버그들을 잡았어요.", previewImage: Image(.appPreview1))
}
