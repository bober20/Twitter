//
//  Twit.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 26.07.24.
//

import Foundation
import SwiftUI
import SwiftData


@Model
final class Post {
    @Attribute(.unique) let id: UUID
    let author: User
    var content: String
    var date: Date
    
    init(content: String, author: User) {
        self.id = UUID()
        self.content = content
        self.date = Date.now
        self.author = author
    }
}


//struct Post: Identifiable, Hashable {
//    let id: Int
//    let content: String
//    var authorId: Int
////    let image: Image?
//    var date: Date
//    
//    init(id: Int, content: String, authorId: Int) {
//        self.id = id
//        self.content = content
//        self.authorId = authorId
////        self.image = image
//        self.date = Date.now
//    }
//}
