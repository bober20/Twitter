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
    var modelContext: ModelContext? = nil
    private var author: User
    
    func SavePost() -> String {
        if !newPost.content.isEmpty {
            author.posts.append(newPost)
            modelContext!.insert(newPost)
            return "Saved successfully!"
        } else {
            return "Content is empty. Post was not saved."
        }
    }
    
    init(author: User) {
        self.newPost = Post(content: "", author: author)
        self.author = author
    }
}
