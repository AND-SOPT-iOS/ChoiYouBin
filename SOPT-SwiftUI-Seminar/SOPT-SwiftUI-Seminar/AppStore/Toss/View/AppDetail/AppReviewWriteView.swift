//
//  AppReviewWriteView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct AppReviewWriteView: View {
    var body: some View {
        VStack (spacing: 10){
            Text("탭하여 평가하기")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.black)
            
            Button {
                
            } label: {
                Text("☆  ☆  ☆  ☆  ☆")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.blue)
            }
            
            HStack {
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "square.and.pencil")
                        
                        Text("리뷰 작성")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.blue)
                    }
                }
                .frame(width: 180, height: 50)
                .background(Color(UIColor.systemGray5))
                .cornerRadius(10)
                
                Spacer()
                
                Button {
                    
                } label: {
                    HStack {
                        Image(systemName: "questionmark.circle")
                        
                        Text("앱 지원")
                            .font(.system(size: 14, weight: .bold))
                            .foregroundColor(.blue)
                    }
                }
                .frame(width: 180, height: 50)
                .background(Color(UIColor.systemGray5))
                .cornerRadius(10)
            }
        }
        .padding(.horizontal, 16)
    }
}
