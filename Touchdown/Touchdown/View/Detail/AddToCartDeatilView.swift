//
//  AddToCart.swift
//  Touchdown
//
//  Created by Omar Bakri on 22/06/1444 AH.
//

import SwiftUI

struct AddToCartDeatilView: View {
    @EnvironmentObject var shop: Shop

    var body: some View {
        
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//:Button
        .padding(15)
        .background(
        
            Color(red:shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue:
                    shop.selectedProduct?.blue ?? sampleProduct.blue
                 
                 )
        )
        .clipShape(Capsule())
    }
}

struct AddToCartDeatilView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDeatilView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
