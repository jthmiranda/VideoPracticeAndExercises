//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct ContentView: View {
    @State private var editorText = "Some text to edit"
    
    var body: some View {
        NavigationView {
            TextEditor(text: $editorText)
                .font(.title)
                .foregroundColor(.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
