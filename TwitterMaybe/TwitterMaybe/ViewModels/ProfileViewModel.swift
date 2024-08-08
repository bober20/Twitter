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
    var modelContext: ModelContext? = nil
    var user: User
    @Published var posts: [Post] = []
    
    init(for user: User) {
        self.user = user
        
        posts = self.user.posts.sorted(by: {$0.date > $1.date})
    }
    
    func BuildAddPostView() -> some View {
        return AddPostView(author: user)
    }
}
