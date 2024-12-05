//
//  SOPT_SwiftUI_SeminarApp.swift
//  SOPT-SwiftUI-Seminar
//
//  Created by 최유빈 on 12/5/24.
//

import SwiftUI

@main
struct SOPT_SwiftUI_SeminarApp: App {
    @StateObject private var tossViewModel = TossViewModel()
        
    var body: some Scene {
        WindowGroup {
            TossView()
                .environmentObject(tossViewModel)
        }
    }
}
