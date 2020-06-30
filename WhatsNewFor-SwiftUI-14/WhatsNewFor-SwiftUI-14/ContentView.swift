//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct SideBar: View {
    
    var body: some View {
        List(1..<100) { i in
            Text("Row \(i)")
        }
        .listStyle(SidebarListStyle())
    }
}

struct PrimaryView: View {
    
    var body: some View {
        Text("Primary view")
    }
}

struct DetailView: View {
    
    var body: some View {
        Text("Detail view")
    }
}
struct ContentView: View {
   

    var body: some View {
        NavigationView {
            SideBar()
            PrimaryView()
            DetailView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
