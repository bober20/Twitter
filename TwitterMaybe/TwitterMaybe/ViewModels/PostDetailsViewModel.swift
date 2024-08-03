//
//  PostViewModel.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 26.07.24.
//

import Foundation


class PostDetailsViewModel: BaseViewModel, Identifiable, ObservableObject {
    let post: Post
    
    init(for post: Post) {
        self.post = post
    }
}


