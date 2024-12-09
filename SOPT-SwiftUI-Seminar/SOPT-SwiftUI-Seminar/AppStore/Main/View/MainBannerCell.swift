//
//  MainBannerCell.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

struct MainBannerCell: View {
    @ObservedObject var bannerViewModel: BannerViewModel
    let index: Int
    
    private var banner: BannerModel {
        bannerViewModel.getBanner(at: index)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text(banner.sort)
                .font(.system(size: 10))
                .foregroundStyle(Color(UIColor.tintColor))
            
            Text(banner.title)
                .font(.system(size: 18))
                .foregroundStyle(Color.black)
            
            Text(banner.subTitle)
                .font(.system(size: 16))
                .foregroundStyle(Color.gray)
            
            ZStack {
                banner.bannerImage
                    .resizable()
                    .frame(height: 250)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        banner.logoImage
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.leading, 10)
                        
                        VStack(alignment: .leading) {
                            Text(banner.title)
                                .font(.system(size: 14, weight: .bold))
                                .foregroundStyle(Color.white)
                            
                            Text(banner.info)
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
                            
                            Text(banner.inApp)
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
            .frame(height: 250)
        }
        .padding(.horizontal, 15)
    }
}
