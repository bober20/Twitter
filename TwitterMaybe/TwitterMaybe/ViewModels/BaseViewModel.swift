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
    
    func BuildProfileView(user: User) -> some View {
        return ProfileView()
        
//        return ProfileView().environmentObject(ProfileViewModel(user: user))
        
        
    }
}
