//
//  AddPostView.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 3.08.24.
//

import SwiftUI
import SwiftData

struct AddPostView: View {
    @Environment(\.modelContext) var modelContext
    @ObservedObject private var viewModel: AddPostViewModel
    
    var body: some View {
        VStack {
            Text("Add post")
            ScrollView {
                TextField("Text...", text: $viewModel.newPost.content)
            }
            Button(action: {
                viewModel.SavePost()
            }, label: {
                Text("Save post")
            })
            
            Spacer()
        }
        .padding()
        .onAppear {
            viewModel.modelContext = modelContext
        }
        
        
    }
    
    
    init(author: User) {
        viewModel = AddPostViewModel(author: author)
    }
}

#Preview {
    AddPostView(author: User(name: "ll", nickname: "s"))
}
