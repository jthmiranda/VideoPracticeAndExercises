//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI
import AVKit

struct ContentView: View {
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: URL(string: "https://bit.ly/swswift")!)) {
            VStack {
                Text("Watermark")
                    .font(.caption)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .clipShape(Capsule())
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
