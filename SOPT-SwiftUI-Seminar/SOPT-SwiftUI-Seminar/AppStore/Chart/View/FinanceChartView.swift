//
//  FinanceChartView.swift
//  SOPT-35-Seminar
//
//  Created by 최유빈 on 12/08/24.
//

import SwiftUI

struct FinanceChartView: View {
    @StateObject private var chartViewModel = ChartViewModel()

    var body: some View {
        NavigationView {
            VStack {
                List(0..<chartViewModel.sampleApps.count, id: \.self) { index in
                    ZStack {
                        ChartCell(chartViewModel: chartViewModel, index: index)
                                
                        NavigationLink(destination: TossView()) {
                            EmptyView()
                        }
                        .opacity(0)
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("인기 차트")
                        .font(.system(size: 16, weight: .bold))
                }
            }
        }
    }
}

#Preview {
    FinanceChartView()
}
