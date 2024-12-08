//
//  ChartViewModel.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

class ChartViewModel: ObservableObject {
    
    @Published var sampleApps: [Application] = Application.sampleApps
    
    func getApp(at index: Int) -> Application {
        return sampleApps[index]
    }
}
