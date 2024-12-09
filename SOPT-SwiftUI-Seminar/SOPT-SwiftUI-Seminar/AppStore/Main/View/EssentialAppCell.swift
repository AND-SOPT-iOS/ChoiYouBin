//
//  EssentialAppCell.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/9/24.
//

import SwiftUI

struct EssentialAppCell: View {
    @ObservedObject var chartViewModel: ChartViewModel
    let index: Int
    
    private var app: Application {
        chartViewModel.getApp(at: index)
    }

    var body: some View {
        HStack {
            app.iconImage
                .resizable()
                .frame(width: 55, height: 55)
                .overlay {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(.clear)
                        .stroke(.gray, lineWidth: 0.3)
                        .frame(width: 55, height: 55)
                }
            
            VStack(alignment: .leading, spacing: 3) {
                Text(app.title)
                    .font(.system(size: 16))
                Text(app.subtitle)
                    .font(.system(size: 12))
                    .foregroundStyle(Color(UIColor.lightGray))
            }
            
            Spacer()
            
            Button {

            } label: {
                if app.downloadState.title == "업데이트"
                    || app.downloadState.title == "재 다운"
                {
                    Text(app.downloadState.title)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundStyle(.blue)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 12)
                        .background(Color(UIColor.systemGray6))
                        .clipShape(Capsule())
                }
                else {
                    Text(app.downloadState.title)
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundStyle(.blue)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 20)
                        .background(Color(UIColor.systemGray6))
                        .clipShape(Capsule())
                }
            }
        }
    }
}
