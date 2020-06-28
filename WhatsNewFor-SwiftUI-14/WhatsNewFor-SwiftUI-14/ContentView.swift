//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI

struct CircleBar: View {
    
    @Binding var counter: String
    @Binding var percentaje: CGFloat
    @Binding var color: Color
    
    var body: some View {
        GeometryReader { reader in
            ZStack(alignment: .center) {
                // backgroun circle
                Circle()
                    .stroke(Color(UIColor.quaternarySystemFill), lineWidth: 4)
                    .frame(width: (reader.size.width - 16), height: (reader.size.width - 16))
                
                // progress indicator
                Circle()
                    .trim(from: 0.0, to: self.percentaje)
                    .stroke(self.color, lineWidth: 4)
                    .frame(width: (reader.size.width - 16), height: (reader.size.width - 16))
                    .rotationEffect(Angle(degrees: -90.0))
                
                Text(counter)
                    .font(.system(size: 12, weight: .medium, design: .rounded))
                    .foregroundColor(self.color)
            }
        }
    }
}

class UpdateViewModel: ObservableObject {
    @Published var commentCharactersRemaining = 35
    @Published var comment = "" {
        didSet {
            if self.comment.count > 35 {
                self.comment = oldValue
                self.commentCharactersRemaining = 0
            } else {
                self.commentCharactersRemaining = 35 - self.comment.count
            }
        }
    }
    
}

struct ContentView: View {
    @ObservedObject private var updateModel = UpdateViewModel()
    
    @State var commentLimit = ""
    @State var percentaje: CGFloat = 0.0
    @State var commentLimitForeground = Color.secondary
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(alignment: .center, spacing: 8) {
                Text("Que tal el libro?")
                    .font(.system(size: 20, weight: .bold, design: .serif))
                
                Spacer()
                
                CircleBar(counter: $commentLimit, percentaje: $percentaje, color: $commentLimitForeground)
                    .frame(width: 45, height: 45)
                    .onReceive(self.updateModel.$commentCharactersRemaining, perform: { newLimit in
                        if newLimit > 15 {
                            self.commentLimitForeground = .secondary
                        } else if newLimit > 5 && newLimit <= 15 {
                            self.commentLimitForeground = .orange
                        } else {
                            self.commentLimitForeground = .red
                        }
                        
                        let written = 35 - newLimit
                        self.percentaje = CGFloat((35.0 - CGFloat(written)) / 35.0)
                        self.commentLimit = "\(newLimit)"
                    })
            }
            .padding([.leading, .trailing], 24)
            .padding(.top, 16)
            
            TextField("Hasta 35 caracteres maximos", text: $updateModel.comment)
                .font(.system(size: 20, design: .serif))
                .multilineTextAlignment(.center)
                .keyboardType(.asciiCapable)
                .padding(16)
                .background(Color(UIColor.tertiarySystemFill))
                .frame(maxWidth: .infinity)
                .cornerRadius(8)
                .padding(24)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
