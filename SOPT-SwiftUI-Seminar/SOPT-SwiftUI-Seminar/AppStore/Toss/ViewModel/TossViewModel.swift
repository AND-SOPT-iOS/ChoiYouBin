//
//  TossViewModel.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/6/24.
//

import SwiftUI

class TossViewModel: ObservableObject {
    
    @Published var appDetail: AppDetail = AppDetail.tossAppDetail
    @Published var isReviewd = false
    
    func reviewButtonTapped() {
        isReviewd.toggle()
    }
}
