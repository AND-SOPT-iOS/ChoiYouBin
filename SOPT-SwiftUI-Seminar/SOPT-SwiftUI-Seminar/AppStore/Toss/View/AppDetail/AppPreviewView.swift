//
//  AppPreviewView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct AppPreviewView: View {
    @EnvironmentObject var viewModel: TossViewModel
    
    var body: some View {
        VStack {
            
            HStack {
                Text("미리 보기")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.black)
                
                Spacer()
            }
            
            viewModel.appDetail.previewImage
                .resizable()
                .frame(height: 450)
            
        }
        .padding(.horizontal, 16)
    }
}
