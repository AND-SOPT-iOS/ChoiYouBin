//
//  MainBannerCell.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

struct MainBannerCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text("새로운 경험")
                .font(.system(size: 10))
                .foregroundStyle(Color(UIColor.tintColor))
            
            Text("Fortune City - A Finance App")
                .font(.system(size: 18))
                .foregroundStyle(Color.black)
            
            Text("게임을 하듯 관리하는 가계부")
                .font(.system(size: 16))
                .foregroundStyle(Color.gray)
            
            ZStack {
                Image(.banner1)
                    .resizable()
                    .frame(height: 300)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        Image(.icon1)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.leading, 10)
                        
                        VStack(alignment: .leading) {
                            Text("Fortune City - A Finance App")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundStyle(Color.white)
                            
                            Text("좋은 소비습관을 만들어 보세요")
                                .font(.system(size: 12))
                                .foregroundStyle(Color(UIColor.systemGray6))
                        }
                        
                        Spacer()
                        
                        VStack {
                            Button {
                                
                            } label: {
                                Text("받기")
                                    .font(.system(size: 14))
                                    .fontWeight(.bold)
                                    .foregroundStyle(.white)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 24)
                                    .background(Color.black.opacity(0.5))
                                    .clipShape(Capsule())
                            }
                            
                            Text("앱 내 구입")
                                .font(.system(size: 8))
                                .foregroundStyle(Color(UIColor.systemGray6))
                        }
                        .padding(.trailing, 10)
                        .padding(.top, 10)
                    }
                    .padding(.vertical, 10)
                    .background(Color.black.opacity(0.1))
                    
                }
            }
            .frame(height: 300)
        }
        .padding(.horizontal, 15)
    }
}

#Preview {
    MainBannerCell()
}
