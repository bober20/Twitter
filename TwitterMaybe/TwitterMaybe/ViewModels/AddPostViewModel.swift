//
//  AddPostViewModel.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 3.08.24.
//

import Foundation
import SwiftData
import SwiftUI


class AddPostViewModel: BaseViewModel, ObservableObject {
    @Published var newPost: Post
    private var modelContext: ModelContext
    private var author: User
    
    func SavePost() -> String {
        if !newPost.content.isEmpty {
            author.posts.append(newPost)
            modelContext.insert(newPost)
            print("saved")
            return "Saved successfully!"
        } else {
            return "Content is empty."
        }
    }
    
    init(modelContext: ModelContext, author: User) {
        self.modelContext = modelContext
        self.newPost = Post(content: "", author: author)
        self.author = author
    }
}
