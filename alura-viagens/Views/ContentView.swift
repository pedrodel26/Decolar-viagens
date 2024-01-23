//
//  ContentView.swift
//  alura-viagens
//
//  Created by Pedro Delmondes  on 18/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        
        NavigationView {
            GeometryReader { view in
                
                // MARK: - VStack Principal
                
                VStack {
                    HeaderView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 210 : 350, alignment: .top)
                    List(viagens) { viagem in
                        NavigationLink(destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localization")) {
                            CelulaViagemView(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
            }
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}
