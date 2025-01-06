//
//  ChartViewModel.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

class ChartViewModel: ObservableObject {
    
    @Published var sampleApps: [Application] = Application.sampleApps
    @Published var freeApps:  [Application] = Application.freeApps
    @Published var paidApps: [Application] = Application.paidApps
    
    func getApp(at index: Int) -> Application {
        return sampleApps[index]
    }
    
    func getFreeApp(at index: Int) -> Application {
        return freeApps[index]
    }
    
    func getPaidApp(at index: Int) -> Application {
        return paidApps[index]
    }
}
