//
//  ContentView.swift
//  WhatsNewFor-SwiftUI-14
//
//  Created by Jonathan Miranda on 6/26/20.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 13.689, longitude: -89.187), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Map(coordinateRegion: $region)
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
