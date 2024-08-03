//
//  User.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 26.07.24.
//

import Foundation
import SwiftUI
import SwiftData


@Model
final class User {
    @Attribute(.unique) let id: UUID
    var name: String
    var nickname: String
    @Relationship(deleteRule: .cascade) var posts: [Post] = []
    
    init(name: String, nickname: String) {
        self.id = UUID()
        self.name = name
        self.nickname = nickname
        self.posts = []
    }
}

//struct User: Identifiable {
//    let id: Int
//    var name: String
//    var nickname: String
//    var profileImage: Image
//    var posts: [Post]
//    
//    init(id: Int, name: String, nickname: String) {
//        self.id = id
//        self.name = name
//        self.nickname = nickname
//        self.profileImage = Image("Image")
//        self.posts = []
//    }
//    
//    mutating func AddPost(post: Post) -> Void {
//        posts.append(post)
//    }
//}
