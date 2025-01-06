//
//  AppNewsView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct AppNewsView: View {
    @EnvironmentObject var viewModel: TossViewModel
    
    var body: some View {
        VStack(spacing: 10) {
            Button {
                
            } label: {
                HStack {
                    Text("새로운 소식")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.black)
                    
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 8, height: 12)
                        .foregroundColor(.black)
                    
                    Spacer()
                }
            }
            
            HStack {
                Text(viewModel.appDetail.version)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("1일 전")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text(viewModel.appDetail.updateNotes)
                    .font(.system(size: 12))
                
                Spacer()
            }
        }
        .padding(.horizontal, 16)
    }
}
