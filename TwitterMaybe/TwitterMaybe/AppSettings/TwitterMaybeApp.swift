//
//  TwitterMaybeApp.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 26.07.24.
//

import SwiftUI
import SwiftData

@MainActor
@main
struct TwitterMaybeApp: App {
    let modelContainer: ModelContainer = AppContainer
    
    var body: some Scene {
        WindowGroup {
            TabView {
                MainView(modelContext: modelContainer.mainContext)
                    .tabItem {
                        Label("Main", systemImage: "book")
                    }
//                ProfileView().environmentObject(ProfileViewModel(user: User(name: "d", nickname: "dd")))
//                    .tabItem {
//                        Label("Profile", systemImage: "gear")
//                    }
            }
        }
        .modelContainer(modelContainer)
    }
}
