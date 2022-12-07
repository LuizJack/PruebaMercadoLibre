//
//  ContentView.swift
//  MLP
//
//  Created by Luiz Camargo on 6/12/22.
//

import SwiftUI

struct ContentView: View {
    
    private var networkProvider: NetworkProvider = NetworkProvider()
    
    var body: some View {
        VStack {
            Text ("Consulta Get Mercado Libre")
                .padding()
            Button("Crear Petición HTTP") {
                networkProvider.consultaApiMl()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
