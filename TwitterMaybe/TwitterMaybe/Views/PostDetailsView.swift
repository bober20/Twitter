//
//  PostView.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 26.07.24.
//

import SwiftUI

struct PostDetailsView: View {
    @State var viewModel: PostDetailsViewModel
    
    var body: some View {
        VStack {
            VStack {
                HStack {
                    NavigationLink {
//                        viewModel.BuildProfileView(for: viewModel.post.author)
                    } label: {
                        Image("Image")
                            .resizable()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(.white))
                            .frame(width: 50, height: 50)
                        Text(viewModel.post.author.name)
                        Text(viewModel.post.author.nickname)
                        Spacer()
                    }
                }
                .font(.title3)
                .bold()
                .foregroundStyle(.black)
                
                HStack {
                    Text(viewModel.post.content)
                    Spacer()
                }
                .font(.title3)
                
                HStack {
                    Spacer()
                    Text(viewModel.post.date, format: Date.FormatStyle())
                }
                .font(.subheadline)
            }
            .padding()
            
            Divider()
                .overlay(.black)
            
            Spacer()
        }
    }
    
    
    init(for post: Post) {
        viewModel = PostDetailsViewModel(for: post)
    }
}

#Preview {
    PostDetailsView(for: Post(content: "ddd", author: User(name: "l", nickname: "aaa")))
}
