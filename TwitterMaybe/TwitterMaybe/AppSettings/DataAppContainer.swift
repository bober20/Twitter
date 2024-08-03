//
//  DataAppContainer.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 2.08.24.
//

import Foundation
import SwiftData


@MainActor
let AppContainer: ModelContainer = {
    do {
        let container = try ModelContainer(for: User.self, Post.self)
        
        var userFetchDescriptor = FetchDescriptor<User>()
        userFetchDescriptor.fetchLimit = 1
        
        guard try container.mainContext.fetch(userFetchDescriptor).count == 0 else {
            return container
        }
        
        var users = [User(name: "dasha", nickname: "dara"),
                 User(name: "sasha", nickname: "sh"),
                 User(name: "masha", nickname: "mh"),
                 User(name: "pasha", nickname: "ph"),
                 User(name: "polina", nickname: "poll")]
        
        print("gggg")
        
        for user in users {
            container.mainContext.insert(user)
            
            for i in 0...3 {
                user.posts.append(Post(content: "content \(i)", author: user))
                container.mainContext.insert(user.posts[i])
            }
            
        }
        
        return container
    } catch {
        fatalError("Cannot create a model container")
    }
}()
