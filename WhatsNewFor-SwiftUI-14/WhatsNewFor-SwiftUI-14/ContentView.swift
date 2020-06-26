//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI


struct ContentView: View {
    @State private var bgColor = Color.white
    
    var body: some View {
        ColorPicker("Set the background color", selection: $bgColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
