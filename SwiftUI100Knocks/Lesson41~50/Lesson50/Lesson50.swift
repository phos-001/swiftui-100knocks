//
//  Lesson50.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2023/10/20.
//

import MapKit
import SwiftUI

struct Lesson50: View {
    @State var showingAlert = false
    @State var selectedLocation: CLLocationCoordinate2D?
    @State var locations: [CLLocationCoordinate2D] = []

    var body: some View {
        MapView(locations: $locations) { location in
            self.selectedLocation = location
            self.showingAlert = true
        }
        .onAppear {
            let location = CLLocationCoordinate2D(latitude: CLLocationDegrees(34.6432), longitude: CLLocationDegrees(134.9976))
            locations.append(location)
        }
        .alert(isPresented: $showingAlert) {
            Alert(
                title: Text("緯度・経度"),
                message: Text("緯度: \(selectedLocation?.latitude ?? -1), 経度: \(selectedLocation?.longitude ?? -1)"),
                primaryButton: .default(Text("OK")) {
                    guard let location = selectedLocation else {
                        return
                    }
                    self.addLocation(location: location)
                }, secondaryButton: .cancel())
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .ignoresSafeArea(.all, edges: .all)
    }

    private func addLocation(location: CLLocationCoordinate2D) {
        locations.append(location)
    }
}

struct Lesson50_Previews: PreviewProvider {
    static var previews: some View {
        Lesson50()
    }
}
