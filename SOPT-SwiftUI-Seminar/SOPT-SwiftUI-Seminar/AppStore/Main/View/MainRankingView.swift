//
//  MainRankingView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

struct MainRankingView: View {
    @StateObject private var chartViewModel = ChartViewModel()
    let paid: String
    
    var body: some View {
        VStack (spacing: 0){
            Button {
                
            } label: {
                HStack {
                    if paid == "유료" {
                        Text("유료 순위")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundStyle(Color.black)
                    }
                    else {
                        Text("무료 순위")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundStyle(Color.black)
                    }
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 10, height: 14)
                        .foregroundStyle(Color(UIColor.darkGray))
                    
                    Spacer()
                    
                }
            }
            .padding(.leading, 20)
            
            NavigationView {
                VStack {
                    List(0..<3, id: \.self) { index in
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
                .scrollDisabled(true)
            }
        }
    }
}
