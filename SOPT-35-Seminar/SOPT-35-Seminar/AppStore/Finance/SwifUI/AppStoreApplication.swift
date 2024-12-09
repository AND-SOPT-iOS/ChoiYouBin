//
//  AppStoreApplication.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/29/24.
//

import SwiftUI

struct AppStoreApplication: Identifiable {
    let id: UUID
    let iconImage: Image
    let ranking: Int
    let title: String
    let subtitle: String
    let category: String
    let downloadState: DownloadState
}

extension AppStoreApplication {
    static let sampleApps: [AppStoreApplication] = [
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon5),
            ranking: 1,
            title: "YouTube",
            subtitle: "동영상과 음악을 스트리밍하세요",
            category: "엔터테인먼트",
            downloadState: .installed
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon6),
            ranking: 2,
            title: "Netflix",
            subtitle: "영화와 TV 프로그램 시청",
            category: "엔터테인먼트",
            downloadState: .update
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.tossIcon),
            ranking: 3,
            title: "토스",
            subtitle: "간편 송금과 결제",
            category: "금융",
            downloadState: .redownload
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon8),
            ranking: 4,
            title: "Instagram",
            subtitle: "사진과 동영상 공유",
            category: "소셜 네트워킹",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon9),
            ranking: 5,
            title: "Twitter",
            subtitle: "실시간 뉴스와 대화",
            category: "소셜 네트워킹",
            downloadState: .redownload
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon10),
            ranking: 6,
            title: "Spotify",
            subtitle: "음악 스트리밍 서비스",
            category: "음악",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon11),
            ranking: 7,
            title: "쿠팡",
            subtitle: "로켓배송",
            category: "쇼핑",
            downloadState: .update
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon12),
            ranking: 8,
            title: "네이버",
            subtitle: "검색과 뉴스",
            category: "유틸리티",
            downloadState: .installed
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon7),
            ranking: 9,
            title: "카카오톡",
            subtitle: "무료 메시징과 통화",
            category: "소셜 네트워킹",
            downloadState: .installed
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon13),
            ranking: 10,
            title: "배달의민족",
            subtitle: "음식 배달 서비스",
            category: "푸드",
            downloadState: .installed
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon14),
            ranking: 11,
            title: "Discord",
            subtitle: "게이머를 위한 채팅",
            category: "소셜 네트워킹",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon15),
            ranking: 12,
            title: "Google",
            subtitle: "검색과 클라우드 서비스",
            category: "유틸리티",
            downloadState: .update
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon16),
            ranking: 13,
            title: "Facebook",
            subtitle: "친구와 소통하기",
            category: "소셜 네트워킹",
            downloadState: .redownload
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon17),
            ranking: 14,
            title: "LINE",
            subtitle: "무료 메시지와 통화",
            category: "소셜 네트워킹",
            downloadState: .installed
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon18),
            ranking: 15,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon19),
            ranking: 16,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon20),
            ranking: 17,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon21),
            ranking: 18,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon22),
            ranking: 19,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon23),
            ranking: 20,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon24),
            ranking: 21,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon25),
            ranking: 22,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon26),
            ranking: 23,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon27),
            ranking: 24,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon28),
            ranking: 26,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon29),
            ranking: 26,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        ),
        AppStoreApplication(
            id: UUID(),
            iconImage: Image(.icon30),
            ranking: 27,
            title: "Outlook",
            subtitle: "이메일과 캘린더",
            category: "생산성",
            downloadState: .download
        )
    ]
}
