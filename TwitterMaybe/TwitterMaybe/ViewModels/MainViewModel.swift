//
//  MainViewModel.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 26.07.24.
//

import Foundation
import SwiftUI
import SwiftData


class MainViewModel: BaseViewModel, ObservableObject{
    let modelContext: ModelContext
    var posts = [Post]()
    
    init(modelContext: ModelContext) {
        self.modelContext = modelContext
        super.init()
        fetchData()
    }
    
    func fetchData() {
        do {
            let descriptor = FetchDescriptor<Post>(sortBy: [SortDescriptor(\.date)])
            posts = try modelContext.fetch(descriptor)
        } catch {
            print("Fetch failed")
        }
    }
//
//    
//    override init() {
//        
//    }
    
//    override init() {
//        users = [User(id: 0, name: "dasha", nickname: "dara"),
//                 User(id: 1, name: "sasha", nickname: "sh"),
//                 User(id: 2, name: "masha", nickname: "mh"),
//                 User(id: 3, name: "pasha", nickname: "ph"),
//                 User(id: 4, name: "polina", nickname: "poll")]
//        
//        currentUser = users[0]
//        
//        for j in 1...5 {
//            for i in 0...3 {
//                users[j - 1].AddPost(post: Post(id: j*i - 1, content: "content \(i)", authorId: j - 1))
//            }
//        }
//    }
}





// enum NavigationDestination: Hashable, Equatable {
//  case postDetails(vm: PostDetailsViewModel)
//  case none
//
//  func hash(into hasher: inout Hasher) {
//    var index = 0
//    switch self {
//    case .postDetails:
//      index = 1
//    case .none:
//      index = 0
//    }
//    hasher.combine(index)
//  }
//
//  static func == (
//    lhs: NavigationDestination,
//    rhs: NavigationDestination
//  ) -> Bool {
//    lhs.hashValue == rhs.hashValue
//  }
//}
