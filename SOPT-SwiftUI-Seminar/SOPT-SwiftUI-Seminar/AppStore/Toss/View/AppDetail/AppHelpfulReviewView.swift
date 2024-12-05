//
//  AppHelpfulReviewView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct AppHelpfulReviewView: View {
    var body: some View {
        VStack (spacing: 12){
            HStack {
                Text("가장 도움이 되는 리뷰")
                    .font(.system(size: 16, weight: .bold))
                    .foregroundColor(.black)
                
                Spacer()
            }
            
            VStack (alignment: .leading, spacing: 10) {
                HStack {
                    Text("안녕하세요 안녕히가세요.")
                        .font(.system(size: 16, weight: .semibold))
                        .padding(.top, 20)
                    
                    Spacer()
                }
                .padding(.leading, 20)
                
                HStack {
                    Text("★★★★★")
                        .font(.system(size: 12))
                        .foregroundColor(.black)
                    
                    Text("11월 17일 • 유비니")
                        .font(.system(size: 12))
                        .foregroundColor(Color(UIColor.lightGray))
                }
                .padding(.leading, 20)
                
                Text("시기다른 래퍼들의 반대편을 바라보던 래퍼들의 배포 그건 백프로 다 개뻥 텐션업을 해야지 제대로")
                    .font(.system(size: 12))
                    .foregroundColor(Color(UIColor.lightGray))
                    .padding(.horizontal, 20)
                
                Spacer()
            }
            .frame(height: 200)
            .padding(.horizontal, 4)
            .background(Color.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(UIColor.lightGray), lineWidth: 0.5)
            )
            .shadow(color: Color.black.opacity(0.5), radius: 4, x: 2, y: 2)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    AppHelpfulReviewView()
}
