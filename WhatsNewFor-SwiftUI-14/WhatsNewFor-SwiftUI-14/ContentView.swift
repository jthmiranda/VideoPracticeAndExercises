//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct ContentView: View {
    @State private var downloadValue = 0.0
    
    var body: some View {
        VStack {
            ProgressView("Downloading", value: downloadValue, total: 100)
            Button("Increment download") {
                if (downloadValue < 100) { downloadValue += 10}
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
