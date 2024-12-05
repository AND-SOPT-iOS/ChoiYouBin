//
//  AppDetailHeaderView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct AppDetailHeaderView: View {
    
    var body: some View {
        HStack {
            Image(.tossIcon)
                .resizable()
                .frame(width: 80, height: 80)
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.clear)
                        .stroke(.gray, lineWidth: 0.3)
                        .frame(width: 80, height: 80)
                }
            
            VStack(alignment: .leading){
                Text("토스")
                    .font(.system(size: 18, weight: .bold))
                
                Text("금융이 쉬워진다")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundColor(Color(UIColor.gray))
                
                Spacer()
                
                HStack {
                    Text("받기")
                        .font(.system(size: 12))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 20)
                        .background(.blue)
                        .clipShape(Capsule())
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.blue)
                }
            }
        }
        .padding(.horizontal, 16)
        .frame(height: 80)
    }
    
}
