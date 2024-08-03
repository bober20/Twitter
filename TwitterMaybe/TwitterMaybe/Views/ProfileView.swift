//
//  Profile.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 29.07.24.
//

import SwiftUI
import SwiftData

struct ProfileView: View {
    @State var viewModel: ProfileViewModel
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("Profile")
                    HStack {
                        NavigationLink {
                            viewModel.BuildAddPostView()
                        } label: {
                            Label("", systemImage: "plus")
                        }
                    }
                }
                
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack {
                            Image("Image")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 60, height: 60)
                            VStack {
                                Spacer()
                                Text(viewModel.user.name)
                                    .bold()
                                Text("@"+viewModel.user.nickname)
                                Spacer()
                            }
                            Spacer()
                        }
                        Divider()
                            .overlay(.black)
                        
                        VStack(alignment: .leading) {
                            ForEach(viewModel.posts) { post in
                                PostDisplayView(for: post)
                            }
                        }
                    }
                }
                
            }
        }
        
    }
    
    
    init(modelContext: ModelContext, for user: User) {
        self.viewModel = ProfileViewModel(modelContext: modelContext, for: user)
    }
}

#Preview {
    ProfileView(modelContext: AppContainer.mainContext, for: User(name: "l", nickname: "aaa"))
}
