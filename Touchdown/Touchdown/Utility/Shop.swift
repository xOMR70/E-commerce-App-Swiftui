//
//  Shop.swift
//  Touchdown
//
//  Created by Omar Bakri on 22/06/1444 AH.
//

import Foundation

class Shop: ObservableObject {
  
    @Published var showingProuduct: Bool = false
    @Published var selectedProduct: ProductModel? = nil
    
}
