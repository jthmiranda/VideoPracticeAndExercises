//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    @ScaledMetric private var imageSize: CGFloat = 100
    
    var body: some View {
        Image(systemName: "cloud.bolt.fill")
            .resizable()
            .frame(width: imageSize, height: imageSize)
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
