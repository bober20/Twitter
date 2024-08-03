//
//  PostDisplayViewModel.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 3.08.24.
//

import Foundation


class PostDisplayViewModel: BaseViewModel {
    var post: Post
    
    init(for post: Post) {
        self.post = post
    }
}
