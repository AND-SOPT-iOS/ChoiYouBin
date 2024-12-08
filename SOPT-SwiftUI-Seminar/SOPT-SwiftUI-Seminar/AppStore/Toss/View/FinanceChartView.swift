//
//  FinanceChartView.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 12/08/24.
//

import SwiftUI

struct FinanceChartView: View {
    @StateObject private var viewModel = ChartViewModel()

    var body: some View {
        NavigationView {
            VStack {
                List(0..<viewModel.sampleApps.count, id: \.self) { index in
                    NavigationLink(destination: TossView()) {
                        ChartCell(viewModel: viewModel, index: index)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("인기 차트")
            .background(Color.white)
        }
    }
}
