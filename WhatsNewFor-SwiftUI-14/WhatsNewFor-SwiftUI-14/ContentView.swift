//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct ContentView: View {
    @State private var showTerm = false

    var body: some View {
        DisclosureGroup("Show terms", isExpanded: $showTerm) {
            Text("Long terms and conditions Long terms and conditions Long terms and conditions Long terms and conditions Long terms and conditions Long terms and conditions Long terms and conditions Long terms and conditions Long terms and conditions ")
            
            Button("Hide terms") {
                showTerm.toggle()
            }
        }
        .padding(.all, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
