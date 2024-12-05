//
//  AppNewsView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct AppNewsView: View {
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
                Text("버전 5.191.0")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("1일 전")
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
            
            HStack {
                Text("• 구석구석 숨어있던 버그들을 잡았어요.")
                    .font(.system(size: 12))
                
                Spacer()
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    AppNewsView()
}
