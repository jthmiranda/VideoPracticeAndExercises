//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI
import StoreKit

class User: ObservableObject {
    var username = "jthmiranda"
}

struct ContentView: View {
    @StateObject var user = User()
    
    var body: some View {
        Text("Username: \(user.username)")
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
