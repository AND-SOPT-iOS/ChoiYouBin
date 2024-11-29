//
//  FinanaceChartView.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/29/24.
//

import SwiftUI

struct FinanaceChartView: View {
    private let appList = AppStoreApplication.sampleApps
    
    var body: some View {
        VStack {
            List(appList) { app in
                ChartCell(app: app)
            }
        }
        .listStyle(.plain)
        .edgesIgnoringSafeArea(.horizontal)
    }
}

#Preview {
    FinanaceChartView()
}
