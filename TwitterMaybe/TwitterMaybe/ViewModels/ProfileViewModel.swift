//
//  ProfileViewModel.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 29.07.24.
//

import Foundation


class ProfileViewModel: BaseViewModel, ObservableObject, Identifiable {
    var user: User
    
    init(user: User) {
        self.user = user
    }
}
