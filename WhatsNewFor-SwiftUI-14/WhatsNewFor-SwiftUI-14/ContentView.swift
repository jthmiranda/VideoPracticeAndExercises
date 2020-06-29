//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            Text("Hello World!").padding()
                .navigationBarTitle("SwiftUI")
                .toolbar {
                    ToolbarItem {
                        HStack {
                            Button("Tab One") {
                                print("tapped!")
                            }
                            
                            Button("Tab Two") {
                                print("tapped!")
                            }
                        }
                    }
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
