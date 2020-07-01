//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        TextField("Your name is :", text: $name)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.all, 10)
            .onChange(of: name) { value in
                print("name has changed to: \(value)")
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
