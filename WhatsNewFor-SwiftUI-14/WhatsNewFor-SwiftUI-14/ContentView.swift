//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct ContentView: View {
    let data = Array(1...10000).map { "Item \($0)" }
    
    let column = [
        GridItem(.fixed(100)),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: column, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
