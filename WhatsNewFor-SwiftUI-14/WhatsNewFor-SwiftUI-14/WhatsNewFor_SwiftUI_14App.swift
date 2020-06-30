//
//  WhatsNewFor_SwiftUI_14App.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

@main
struct WhatsNewFor_SwiftUI_14App: App {
    var body: some Scene {
        DocumentGroup(newDocument: FileText()) { file in
            ContentView(document: file.$document)
        }
    }
}
