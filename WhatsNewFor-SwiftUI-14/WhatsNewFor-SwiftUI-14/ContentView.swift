//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI


struct ContentView: View {
    @Namespace private var animation
    @State private var isFlipped = false
    
    var body: some View {
        VStack {
            if isFlipped {
                Circle()
                    .fill(Color.red)
                    .frame(width: 44, height: 44)
                    .matchedGeometryEffect(id: "Shape", in: animation)
                Text("Taylor Swift - 1989")
                    .font(.headline)
                    .matchedGeometryEffect(id: "Album", in: animation)
            } else {
                Text("Taylor Swift - 1989")
                    .font(.headline)
                    .matchedGeometryEffect(id: "Album", in: animation)
                Circle()
                    .fill(Color.red)
                    .frame(width: 44, height: 44)
                    .matchedGeometryEffect(id: "Shape", in: animation)
            }
        }
        .onTapGesture {
            withAnimation {
                isFlipped.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
