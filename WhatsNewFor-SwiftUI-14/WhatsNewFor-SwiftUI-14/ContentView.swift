//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        // This is buggy a this point beta 1 Xcode 12
       //Label("Jonathan Miranda", systemImage: "person.circle")
        
        
        Label {
            Text("Jonathan Miranda")
                .foregroundColor(.primary)
                .font(.title)
                .padding()
                .background(Color.gray.opacity(0.2))
                .clipShape(Capsule())
        } icon: {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.blue)
                .frame(width: 64, height: 64)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
