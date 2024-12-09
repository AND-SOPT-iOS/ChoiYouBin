//
//  ChartCell.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/8/24.
//

import SwiftUI

struct ChartCell: View {
    @ObservedObject var chartViewModel: ChartViewModel
    let index: Int
    let category: String
    
    private var app: Application {
        if category == "free" {
            chartViewModel.getFreeApp(at: index)
        }
        else if category == "paid"{
            chartViewModel.getPaidApp(at: index)
        }
        else {
            chartViewModel.getApp(at: index)
        }
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
            
            if category == "essential" {
                VStack(spacing: 3) {
                    Text(app.ranking.description)
                        .font(.system(size: 16, weight: .bold))
                    
                    Text("")
                        .font(.system(size: 12))
                }
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
                if app.downloadState == .update
                    || app.downloadState == .paid
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
                else if app.downloadState == .redownload {
                    Image(systemName: "icloud.and.arrow.down")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(Color.blue)
                        .padding(.horizontal, 20)
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
