//
//  BaseViewModel.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 1.08.24.
//

import Foundation
import SwiftUI


class BaseViewModel {
    func BuildDetailsView(for post: Post) -> some View {
        return PostDetailsView(for: post)
    }
    
//    func BuildProfileView(for user: User) -> some View {
//        return ProfileView(model, for: user)
        
//        return ProfileView().environmentObject(ProfileViewModel(user: user))
        
        
//    }
}
