//
//  TossView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct TossView: View {
    @EnvironmentObject var viewModel: TossViewModel
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack {
                AppDetailHeaderView()
                
                Divider()
                    .padding(.top, 8)
                    .padding(.horizontal, 16)
                
                AppDescriptionView()
                    .padding(.top, 5)
         
                
                Divider()
                    .padding(.top, 8)
                    .padding(.horizontal, 16)
                
                AppNewsView()
                    .padding(.top, 5)
                
                AppPreviewView()
                    .padding(.top, 20)
                
                Divider()
                    .padding(.top, 8)
                
                AppInfoView()
                    .padding(.top, 10)
                
                AppReviewView()
                    .padding(.top, 20)
                
                AppHelpfulReviewView()
                    .padding(.top, 2)
                
                AppReviewWriteView()
                    .padding(.top, 12)
                
                // MARK: 하단 공백
                HStack { }
                    .frame(height: 50)
            }
        }
    }
}
