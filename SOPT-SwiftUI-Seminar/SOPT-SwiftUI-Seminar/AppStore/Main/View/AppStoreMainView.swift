//
//  AppStoreMainView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

struct AppStoreMainView: View {
    var body: some View {
        ScrollView {
            VStack (spacing: 20){
                MainBannerView()
                
                EssentialAppView()
                    .frame(height: 260)
                
                MainRankingView(paid: "유료")
                    .frame(height: 250)
                
                MainRankingView(paid: "무료")
                    .frame(height: 250)
            }
        }
    }
}

#Preview {
    AppStoreMainView()
}
