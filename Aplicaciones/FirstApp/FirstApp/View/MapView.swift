//
//  MapView.swift
//  FirstApp
//
//  Created by Francisco Javier Casais on 16/3/22.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) ->
        MKMapView {
            MKMapView(frame: .zero)
        }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
    
        let coodinate = CLLocationCoordinate2D(latitude: 37.3826,
             longitude: -5.99629)
        
        //Cuanto mas alto sea el numero mas lejos se situa la vista
        let span = MKCoordinateSpan(
            latitudeDelta: 0.05,
            longitudeDelta: 0.05)
        
        let region = MKCoordinateRegion(center: coodinate, span: span)
        
        uiView.setRegion(region, animated: true)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
