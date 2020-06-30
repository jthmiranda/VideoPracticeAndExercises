//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI
import UniformTypeIdentifiers

struct FileText: FileDocument {
    static var readableContentTypes = [UTType.plainText]
    
    var text = ""
    
    init(initialText: String = "") {
        text = initialText
    }
    
    init(fileWrapper: FileWrapper, contentType: UTType) throws {
        if let data = fileWrapper.regularFileContents{
            text = String(decoding: data, as: UTF8.self)
        }
    }
    
    func write(to fileWrapper: inout FileWrapper, contentType: UTType) throws {
        let data = Data(text.utf8)
        fileWrapper = FileWrapper(regularFileWithContents: data)
    }
}


struct ContentView: View {
    @Binding var document: FileText

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView(document: .constant(FileText()))
    }
}
