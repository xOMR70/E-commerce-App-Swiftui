//
//  ProductModel.swift
//  Touchdown
//
//  Created by Omar Bakri on 04/05/1444 AH.
//

import Foundation

struct ProductModel: Codable,Identifiable{    
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    var red: Double {
        return color[0]
    }
    var green: Double {
        return color[1]
    }
    var blue: Double {
        return color[2]
    }
    
    var formattedPrice: String {
        return "$\(price)"
    }
    
}
