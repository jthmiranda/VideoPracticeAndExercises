//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        List(0..<100) { i in
            Text("Row \(i)")
        }
        .listStyle(InsetGroupedListStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
