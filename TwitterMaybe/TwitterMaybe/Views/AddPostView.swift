//
//  AddPostView.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 3.08.24.
//

import SwiftUI
import SwiftData

struct AddPostView: View {
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
        
        
    }
    
    init(modelContext: ModelContext, author: User) {
        viewModel = AddPostViewModel(modelContext: modelContext, author: author)
    }
}

#Preview {
    AddPostView(modelContext: AppContainer.mainContext, author: User(name: "ll", nickname: "s"))
}
