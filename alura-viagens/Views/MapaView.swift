//
//  MapaView.swift
//  alura-viagens
//
//  Created by Pedro Delmondes  on 22/01/2024.
//

import SwiftUI
import MapKit

struct MapaView: UIViewRepresentable {
    
    var coordenada: CLLocationCoordinate2D
    
    func makeUIView(context: Context) -> MKMapView{
        return MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        let region = MKCoordinateRegion(center: coordenada, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct MapaView_Prviews: PreviewProvider{
    static var previews: some View {
        MapaView(coordenada: viagens[0].localizacao)
    }
}
