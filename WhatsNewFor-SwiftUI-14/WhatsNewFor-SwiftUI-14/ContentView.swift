//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openURL) var openURL

    var body: some View {
        VStack {
            Link(destination: URL(string: "https://www.udacity.com")!) {
                Text("Visit Apple")
            }
            .padding(.all, 10)
            
            Button("another link") {
                openURL(URL(string: "http://www.apple.com")!)
            }
            .padding(.all, 10)
            .background(Color.gray.opacity(0.2))
            .clipShape(Capsule())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
