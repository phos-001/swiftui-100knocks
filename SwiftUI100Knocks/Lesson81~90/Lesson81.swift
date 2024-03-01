//
//  Lesson81.swift
//  SwiftUI100Knocks
//
//  Created by Yuto Hayashi on 2024/03/01.
//

import MapKit
import SwiftUI

struct Lesson81: View {
    @State private var location: CLLocationCoordinate2D?
    @State private var locations: [CLLocationCoordinate2D] = []
    @State private var showingSheet: Bool = false

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            LocationSelecterView(locations: locations) { location in
                self.location = location
            }
            HStack {
                VStack(alignment: .leading) {
                    if let location = location {
                        Text("latitude: \(location.latitude)")
                        Text("longitude: \(location.longitude)")
                    }
                }
                Spacer()
                Button {
                    locations = []
                } label: {
                    Text("Clear")
                        .foregroundColor(.black)
                }
                Button {
                    if let location = location {
                        locations.append(location)
                    }
                } label: {
                    Text("Add")
                        .foregroundColor(.black)
                }
                Button {
                    showingSheet = true
                } label: {
                    Text("List")
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal, 16)
            .padding(.bottom, 60)
        }
        .sheet(isPresented: $showingSheet) {
            LocationListView(locations: $locations)
        }
        .ignoresSafeArea(.all, edges: .all)
    }
}

private struct LocationListView: View {
    @Binding var locations: [CLLocationCoordinate2D]

    var body: some View {
        List {
            ForEach(0 ..< locations.count, id: \.self) { index in
                VStack(alignment: .leading) {
                    Text("lat: \(locations[index].latitude.description)")
                    Text("lon: \(locations[index].longitude.description)")
                }
            }
        }
    }
}


private struct LocationSelecterView: UIViewRepresentable {
    let locations: [CLLocationCoordinate2D]
    let locationDidSet: (_ location: CLLocationCoordinate2D) -> Void
    final public class Coordinator: NSObject, LocationSelecterViewDelegate {
        private var mapView: LocationSelecterView
        let locationDidSet: (_ location: CLLocationCoordinate2D) -> Void

        init(_ mapView: LocationSelecterView, locationDidSet: @escaping (_ location: CLLocationCoordinate2D) -> Void) {
            self.mapView = mapView
            self.locationDidSet = locationDidSet
        }

        public func locationDidSet(location: CLLocationCoordinate2D) {
            locationDidSet(location)
        }
    }

    public func makeCoordinator() -> Coordinator {
        Coordinator(self, locationDidSet: locationDidSet)
    }

    public func makeUIView(context: Context) -> UILocationSelecterView {
        let locationsSelectView = UILocationSelecterView()
        locationsSelectView.delegate = context.coordinator
        return locationsSelectView
    }

    public func updateUIView(_ uiView: UILocationSelecterView, context: Context) {

        // clear
        uiView.removeAllAnnotations()

        // add
        for location in locations {
            uiView.addAnotation(location: location)
        }
    }
}

#Preview {
    Lesson81()
}

