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

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.flexible())], spacing: 0) {
                    ForEach(0..<4, id: \.self) { index in
                        viewModel.appDetail.previewImage
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width - 32 ,height: 450)
                    }
                }
            }
            .scrollTargetBehavior(.paging)
            
        }
        .padding(.horizontal, 16)
    }
}
