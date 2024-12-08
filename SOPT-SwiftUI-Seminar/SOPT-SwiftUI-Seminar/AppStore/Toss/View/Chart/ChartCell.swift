//
//  ChartCell.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/8/24.
//

import SwiftUI

struct ChartCell: View {

    let app: Application

    var body: some View {
        HStack(
            spacing: 12
        ) {
            iconImage
            ranking
            titleAndSubTitle
            Spacer()
            downloadButton
        }
    }

    var iconImage: some View {
        app.iconImage
            .resizable()
            .frame(width: 55, height: 55)
            .overlay {
                RoundedRectangle(cornerRadius: 12)
                    .fill(.clear)
                    .stroke(.gray, lineWidth: 0.3)
                    .frame(width: 55, height: 55)
            }
    }

    var ranking: some View {
        VStack {
            Text(app.ranking.description)
                .font(.headline)
            Text("0")
                .foregroundStyle(.white)
                .font(.caption)
        }
    }

    var titleAndSubTitle: some View {
        VStack(alignment: .leading) {
            Text(app.title)
                .font(.headline)
            Text(app.subtitle)
                .font(.caption)
        }
    }

    var downloadButton: some View {
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
