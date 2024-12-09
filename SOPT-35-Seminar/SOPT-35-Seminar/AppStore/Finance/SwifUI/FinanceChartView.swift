//
//  FinanceChartView.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 11/29/24.
//

import SwiftUI

struct FinanceChartView: View {
    private let appList = AppStoreApplication.sampleApps
    
    var body: some View {
        VStack {
            List(appList) { app in
                NavigationLink(destination: TossView()) {
                    ChartCell(app: app)
                }
            }
        }
        .listStyle(.plain)
        .navigationTitle("인기 차트")
    }
    
}

#Preview {
    FinanceChartView()
}
