//
//  FinanceChartView.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 12/08/24.
//

import SwiftUI

struct FinanceChartView: View {
    private let appList = Application.sampleApps

    var body: some View {
        NavigationView {
            VStack {
                List(appList) { app in
                    NavigationLink(destination: TossView()) {
                        ChartCell(app: app)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("인기 차트")
            .background(Color.white)
        }
    }
}
