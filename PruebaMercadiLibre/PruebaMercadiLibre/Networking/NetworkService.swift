//
//  NetworkProvider.swift
//  MLP
//
//  Created by Luiz Camargo on 6/12/22.
//

import Foundation

final class NetworkProvider {
    
    func consultaApiMl () {
        let urlSession = URLSession.shared
        let url = URL(string: "https://api.mercadolibre.com/sites/MLA/search?q=perros")
        
        urlSession.dataTask(with: url!) { data, response, error in
//                        print("data \(String(describing: data))")
//                        print("response \(String(describing: response))")
//                        print("error \(String(describing: error))")
//
            if let data = data {
                let jsonDatos = try? JSONDecoder().decode(Busqueda.self, from: data)
                
                
                for i in 1...10 {
                    print(jsonDatos!.results[i].title)
                    print(jsonDatos!.results[i].price)
                  //  print(jsonDatos!.paging.total)
                }
                
                
            
                
            }
            
        }.resume()
    }
}

//print("Response \(String(describing: response))")
//            print("data \(String(describing: data))")
//            print("data \(String(describing: response))")
//            print("data \(String(describing: error))")

