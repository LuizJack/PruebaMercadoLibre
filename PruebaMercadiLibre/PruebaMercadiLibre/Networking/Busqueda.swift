//
//  Buqueda.swift
//  MLP
//
//  Created by Luiz Camargo on 6/12/22.
//

import Foundation


struct Busqueda : Decodable {
    var results : [Result]
   
}

struct Result : Decodable {
    
    var title : String
    var price : Int
}



