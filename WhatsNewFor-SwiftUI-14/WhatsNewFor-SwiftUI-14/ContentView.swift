//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Text(Date()...Date().addingTimeInterval(6800))
            
            Text(Date().addingTimeInterval(6800), style: .time)
            
            Text(Date().addingTimeInterval(6800), style: .time)
            
            Text(Date().addingTimeInterval(6800), style: .relative)
            
            Text(Date().addingTimeInterval(6800), style: .offset)
            
            Text(Date().addingTimeInterval(6800), style: .timer)
        }
        .font(.title)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
