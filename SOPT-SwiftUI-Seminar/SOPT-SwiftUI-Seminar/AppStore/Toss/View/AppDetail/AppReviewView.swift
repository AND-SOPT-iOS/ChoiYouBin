//
//  AppReviewView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct AppReviewView: View {
    var body: some View {
        VStack (spacing: 12){
            Button {
                
            } label: {
                HStack {
                    Text("평가 및 리뷰")
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
                Text("4.4")
                    .font(.system(size: 40, weight: .bold))
                
                Spacer()
                
                VStack (alignment: .trailing){
                    Text("★★★★★")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(.black)
                    
                    Text("8.4만개의 평가")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(Color(UIColor.darkGray))
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    AppReviewView()
}
