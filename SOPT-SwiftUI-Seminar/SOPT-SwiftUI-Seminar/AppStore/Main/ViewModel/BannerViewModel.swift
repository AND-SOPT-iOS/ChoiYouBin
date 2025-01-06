//
//  BannerViewModel.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

class BannerViewModel: ObservableObject {
    
    @Published var sampleBanners: [BannerModel] = BannerModel.sampleBanners
    
    func getBanner(at index: Int) -> BannerModel {
        return sampleBanners[index]
    }
}
