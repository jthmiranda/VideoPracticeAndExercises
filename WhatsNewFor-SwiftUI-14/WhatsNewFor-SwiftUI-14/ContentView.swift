//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct Bookmark: Identifiable {
    var id = UUID()
    var name: String
    var icon: String
    var items: [Bookmark]?
}

extension Bookmark {
    
    // some example websites
        static let apple = Bookmark(name: "Apple", icon: "1.circle")
        static let bbc = Bookmark(name: "BBC", icon: "square.and.pencil")
        static let swift = Bookmark(name: "Swift", icon: "bolt.fill")
        static let twitter = Bookmark(name: "Twitter", icon: "mic")

        // some example groups
        static let example1 = Bookmark(name: "Favorites", icon: "star", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
        static let example2 = Bookmark(name: "Recent", icon: "timer", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
        static let example3 = Bookmark(name: "Recommended", icon: "hand.thumbsup", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
}

struct ContentView: View {
    let items: [Bookmark] = [Bookmark.example1, Bookmark.example2, Bookmark.example3]

    var body: some View {
        
        List(items, children: \.items) { row in
            Image(systemName: row.icon)
            Text(row.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
