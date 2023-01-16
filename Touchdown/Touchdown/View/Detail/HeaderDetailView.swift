//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Omar Bakri on 12/06/1444 AH.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPRETIES
    @EnvironmentObject var shop: Shop
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            
            Text("Protective Gear")
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })//:VStack
        .foregroundColor(.white)
    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
