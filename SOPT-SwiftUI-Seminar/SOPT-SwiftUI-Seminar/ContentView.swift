//
//  ContentView.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: AppStoreMainView()
                    .navigationTitle("금융")
                    .navigationBarTitleDisplayMode(.inline)
                ) {
                    Text("금융 카테고리 이동")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundStyle(Color.blue)
                }
            }
            .padding()
            .navigationTitle("앱")
        }
    }
}

#Preview {
    ContentView()
}
