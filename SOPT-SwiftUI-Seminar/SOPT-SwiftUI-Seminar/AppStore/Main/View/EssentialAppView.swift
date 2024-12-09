//
//  MainChartView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

struct EssentialAppView: View {
    @StateObject private var chartViewModel = ChartViewModel()
    
    var body: some View {
        VStack (spacing: 0){
            Button {
                
            } label: {
                HStack {
                    Text("필수 금융 앱")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundStyle(Color.black)
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 10, height: 14)
                        .foregroundStyle(Color(UIColor.darkGray))
                    
                    Spacer()
                    
                }
            }
            .padding(.leading, 20)
            
            HStack {
                Text("App Store 에디터가 직접 골랐습니다")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundStyle(Color.gray)
                
                Spacer()
            }
            .padding(.leading, 20)
            
            NavigationView {
                VStack {
                    List(0..<3, id: \.self) { index in
                        ZStack {
                            EssentialAppCell(chartViewModel: chartViewModel, index: index)
                            
                            NavigationLink(destination: TossView()) {
                                EmptyView()
                            }
                            .opacity(0)
                        }
                    }
                }
                .listStyle(.plain)
                .scrollDisabled(true)
            }
        }
    }
}

#Preview {
    EssentialAppView()
}
