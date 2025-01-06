//
//  AppDescriptionView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct AppDescriptionView: View {
    @EnvironmentObject var viewModel: TossViewModel
    
    var body: some View {
        HStack {
            
            Spacer()
            
            VStack {
                Text("\(viewModel.appDetail.ratingCount)만개의 평가")
                    .font(.system(size: 10))
                    .foregroundColor(Color(.systemGray2))
                
                Spacer()
                
                Text(viewModel.appDetail.rating)
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("★★★★★")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.gray)
            }
            .frame(width: 80)
            
            Spacer()
            
            Divider()
                .frame(width: 1, height: 30)
            
            Spacer()
            
            VStack {
                Text("수상")
                    .font(.system(size: 10))
                    .foregroundColor(Color(.systemGray2))
                
                Spacer()
                
                Image(systemName: "person")
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("앱")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.gray)
            }
            .frame(width: 80)
            
            Spacer()
            
            Divider()
                .frame(width: 1, height: 30)
            
            Spacer()
            
            VStack {
                Text("연령")
                    .font(.system(size: 10))
                    .foregroundColor(Color(.systemGray2))
                
                Spacer()
                
                Text("4+")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("세")
                    .font(.system(size: 12, weight: .bold))
                    .foregroundColor(.gray)
            }
            .frame(width: 80)
            
            Spacer()
        }
        .padding(.horizontal, 16)
        .frame(height: 60)
    }
}
