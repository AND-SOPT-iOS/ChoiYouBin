//
//  BannerModel.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

struct BannerModel {
    let bannerImage: Image
    let sort: String
    let title: String
    let subTitle: String
    let logoImage: Image
    let info: String
    let inApp: String
}

extension BannerModel {
    static let sampleBanners: [BannerModel] = [
        BannerModel(
            bannerImage: Image(.banner1),
            sort: "새로운 경험",
            title: "Swift",
            subTitle: "Swift 배너입니다.",
            logoImage: Image(.icon1),
            info: "Swift 배너 1입니다.",
            inApp: "앱 내 구입"
        ),
        BannerModel(
            bannerImage: Image(.banner2),
            sort: "추천",
            title: "전화",
            subTitle: "전화 배너입니다.",
            logoImage: Image(.icon2),
            info: "전화 배너 2입니다.",
            inApp: "앱 내 구입"
        ),
        BannerModel(
            bannerImage: Image(.banner3),
            sort: "새로운 앱",
            title: "메세지",
            subTitle: "메세지 배너입니다.",
            logoImage: Image(.icon3),
            info: "메세지 배너 3입니다.",
            inApp: "앱 내 구입"
                    ),
        BannerModel(
            bannerImage: Image(.banner4),
            sort: "추천",
            title: "FaceTime",
            subTitle: "FaceTime 배너입니다.",
            logoImage: Image(.icon4),
            info: "FaceTime 배너 4입니다.",
            inApp: "앱 내 구입"
        )
    ]
}
