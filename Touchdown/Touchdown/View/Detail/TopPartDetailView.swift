//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Omar Bakri on 12/06/1444 AH.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPRETIES
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop

    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            
            VStack(alignment: .leading, spacing: 6, content: {
                //MARK: - PRICE
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ??  sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
                
            })//:VStack
            .offset(y: isAnimating ? -50 : -75)
            Spacer()
            
            //MARK: - PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .opacity(isAnimating ? 1 : 0)
                .offset(y: isAnimating ? 0 : -75)

        })//:HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.35)){
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
