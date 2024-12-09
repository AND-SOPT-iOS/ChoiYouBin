//
//  MainBannerView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

struct MainBannerView: View {
    @StateObject private var bannerViewModel = BannerViewModel()
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: [GridItem(.flexible())], spacing: 0) {
                ForEach(0..<4, id: \.self) { index in
                    MainBannerCell(bannerViewModel: bannerViewModel, index: index)
                        .frame(width: UIScreen.main.bounds.width)
                }
            }
        }
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    MainBannerView()
}
