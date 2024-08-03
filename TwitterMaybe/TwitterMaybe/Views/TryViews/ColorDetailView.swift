//
//  ColorDetail.swift
//  TwitterMaybe
//
//  Created by Darya Soroka on 2.08.24.
//

import SwiftUI

struct ColorDetailView: View {
    var color: Color
    
    var body: some View {
        Color(color)
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

#Preview {
    ColorDetailView(color: .red)
}
