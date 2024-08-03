//
//  ProfileViewModel.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 29.07.24.
//

import Foundation
import SwiftUI
import SwiftData


class ProfileViewModel: BaseViewModel, ObservableObject, Identifiable {
    var modelContext: ModelContext
    var user: User
    @Published var posts: [Post]
    
    init(modelContext: ModelContext, for user: User) {
        self.user = user
        self.modelContext = modelContext
        
        posts = self.user.posts.sorted(by: {$0.date > $1.date})
    }
    
    func BuildAddPostView() -> some View {
        return AddPostView(modelContext: modelContext, author: user)
    }
}
