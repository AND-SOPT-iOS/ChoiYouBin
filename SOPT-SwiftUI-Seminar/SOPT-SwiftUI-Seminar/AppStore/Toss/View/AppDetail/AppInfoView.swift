//
//  AppInfoView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct AppInfoView: View {
    var body: some View {
        VStack (alignment: .leading, spacing: 8) {
            HStack {
                Text("토스뱅크, 토스증권 서비스를 이용하시려면 토스 앱 설치가 필요합니다.")
                    .font(.system(size: 12, weight: .regular))
                
                Spacer()
            }
            
            HStack {
                VStack (alignment: .leading) {
                    Text("Viva Republica")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundColor(Color(UIColor.tintColor))
                    
                    HStack {
                        Text("개발자")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundColor(Color(UIColor.lightGray))
                        
                        Spacer()
                    }
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "chevron.right")
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    AppInfoView()
}
