//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    @State private var showingRecommeded = false
    
    var body: some View {
        Button("Show recommedation") {
            showingRecommeded.toggle()
        }
        .appStoreOverlay(isPresented: $showingRecommeded) {
            SKOverlay.AppConfiguration(appIdentifier: "2334", position: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
