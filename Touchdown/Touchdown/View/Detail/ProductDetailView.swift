//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Omar Bakri on 12/06/1444 AH.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPRETIES
    @EnvironmentObject var shop : Shop
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            
            //MARK: - NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
//                .padding(.vertical)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //MARK: - HEADER
                HeaderDetailView()
                .padding(.horizontal)
            //MARK: - DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            //MARK: - DETAIL BOTTOM PART
            VStack(alignment: .center, spacing: 0, content: {
                
                //MARK: - RATINGS + SIZE
                
                ReatingsSizeDeatilView()
                    .padding(.top, -20)
                    .padding(.bottom, 26)
                
                //MARK: - DESCRIPTION
                ScrollView(.vertical,showsIndicators: false,content: {
                   
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                    
                })//:Scroll

                //MARK: - QUANTITY + FAVORITE
                QuantityFavouriteDetailView()
                    .padding(.vertical,10)
                //MARK: - ADD TO CART
                AddToCartDeatilView()
                    .padding(.bottom,20)
                Spacer()
                
                
            })//:VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-105)
            )
            
        })//:VStack
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(
            Color(
                red:shop.selectedProduct?.red ?? sampleProduct.red,
                green:  shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ??  sampleProduct.blue
            )
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
