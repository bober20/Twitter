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
    let modelContainer: ModelContainer
    var currentUser: User
    
    var body: some Scene {
        WindowGroup {
            TabView {
                MainView(modelContext: modelContainer.mainContext)
                    .tabItem {
                        Label("Main", systemImage: "book")
                    }
                ProfileView(modelContext: modelContainer.mainContext, for: currentUser)
                    .tabItem {
                        Label("Profile", systemImage: "person.crop.circle")
                    }
//                ProfileView().environmentObject(ProfileViewModel(user: User(name: "d", nickname: "dd")))
//                    .tabItem {
//                        Label("Profile", systemImage: "gear")
//                    }
            }
        }
        .modelContainer(modelContainer)
    }
    
    init() {
        self.modelContainer = AppContainer
        
        var userDescriptor = FetchDescriptor<User>()
        userDescriptor.fetchLimit = 1
        
        self.currentUser = try! modelContainer.mainContext.fetch(userDescriptor)[0]
    }
}
