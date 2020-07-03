//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI
import StoreKit

struct ContentView: View {
    @AppStorage("username") private var username: String = "Anonimo"
    
    var body: some View {
        VStack {
            Text("Wellcome \(username)")
            
            Button("Log in") {
                username = "jthmiranda"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
