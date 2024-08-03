//
//  PostDisplayView.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 1.08.24.
//

import SwiftUI

struct PostDisplayView: View {
    var viewModel: PostDisplayViewModel
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    NavigationLink {
                        viewModel.BuildProfileView(user: viewModel.post.author)
                    } label: {
                        Image("Image")
                            .resizable()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(.white))
                            .frame(width: 50, height: 50)
                        Text(viewModel.post.author.name)
                        Text(viewModel.post.author.nickname)
                    }
                    Spacer()
                }
                .font(.title3)
                .bold()
                
                HStack {
                    NavigationLink {
                        viewModel.BuildDetailsView(for: viewModel.post)
                    } label: {
                        Text(viewModel.post.content)
                            .font(.title3)
                    }
                    Spacer()
                }
                
                HStack {
                    Spacer()
                    Text(viewModel.post.date, format: Date.FormatStyle())
                }
            }
            .padding(5)
            
            Divider()
                .overlay(.black)
        }
    }
    
    
    init(for post: Post) {
        viewModel = PostDisplayViewModel(for: post)
    }
}

#Preview {
    PostDisplayView(for: Post(content: "ddd", author: User(name: "l", nickname: "aaa")))
}
