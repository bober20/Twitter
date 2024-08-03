//
//  Color.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 2.08.24.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Green", value: Color.green)
                NavigationLink("Pink", value: Color.pink)
                NavigationLink("Orange", value: Color.orange)
            }
            .navigationDestination(for: Color.self) { color in
                ColorDetailView(color: color)
            }
        }
    }
}

#Preview {
    ColorView()
}
