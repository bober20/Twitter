//
//  ContentView.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 26.07.24.
//

import SwiftUI
import SwiftData

struct MainView: View {
    @Environment(\.modelContext) var modelContext
    @ObservedObject private var viewModel = MainViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Text("New posts")
                    Divider()
                        .overlay(.black)
                }
                
                ScrollView {
                    VStack {
                        ForEach(viewModel.posts) { post in
                            PostDisplayView(for: post)
                        }
                    }
                }
            }
        }
        .onAppear {
            viewModel.modelContext = modelContext
            viewModel.fetchData()
        }
    }
        
}


#Preview {
    MainView()
}
