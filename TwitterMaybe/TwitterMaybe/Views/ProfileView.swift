//
//  Profile.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 29.07.24.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var viewModel: ProfileViewModel
    
    var body: some View {
        Text("")
        //        NavigationView {
        //            VStack {
        //                Text("Profile")
        //                ScrollView {
        //                    VStack(alignment: .leading) {
        //                        HStack {
        //                            viewModel.user.profileImage
        //                                .resizable()
        //                                .clipShape(Circle())
        //                                .frame(width: 60, height: 60)
        //                            VStack {
        //                                Spacer()
        //                                Text(viewModel.user.name)
        //                                    .bold()
        //                                Text("@"+viewModel.user.nickname)
        //                                Spacer()
        //                            }
        //                            Spacer()
        //                        }
        //                        Divider()
        //
        //                        VStack(alignment: .leading) {
        //                            ForEach(viewModel.user.posts) { post in
        //                                VStack {
        //                                    HStack {
        //                                        NavigationLink {
        //                                            viewModel.BuildProfileView(user: viewModel.user)
        //                                        } label: {
        //                                            viewModel.user.profileImage
        //                                                .resizable()
        //                                                .clipShape(Circle())
        //                                                .overlay(Circle().stroke(.white))
        //                                                .frame(width: 50, height: 50)
        //
        //                                            Text(viewModel.user.name)
        //                                            Text(viewModel.user.nickname)
        //                                        }
        //                                        Spacer()
        //                                    }
        //
        //                                    HStack {
        //                                        NavigationLink {
        //                                            viewModel.BuildDetailsView(post: post, user: viewModel.user)
        //                                        } label: {
        //                                            Text(post.content)
        //                                        }
        //                                        Spacer()
        //                                    }
        //
        //
        //                                    HStack {
        //                                        Spacer()
        //                                        Text(post.date, format: Date.FormatStyle())
        //                                    }
        //
        //                                }
        //                            }
        //                        }
        //                    }
        //                }
        //            }
        //        }
        
    }
}

#Preview {
    ProfileView()
}
