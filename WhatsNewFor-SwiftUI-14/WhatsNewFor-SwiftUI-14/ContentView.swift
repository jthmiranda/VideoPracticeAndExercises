//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct SampleRow: View {
    var id: Int
    
    var body: some View {
        Text("Row \(id)")
    }
    
    init(id: Int) {
        print("Loading row \(id)")
        self.id = id
    }
}

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(1...1000, id: \.self, content: SampleRow.init)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
