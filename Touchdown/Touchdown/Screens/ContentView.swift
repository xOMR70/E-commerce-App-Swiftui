//
//  ContentView.swift
//  Touchdown
//
//  Created by Omar Bakri on 08/04/1444 AH.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPRTEIS
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY


    var body: some View {
        ZStack {
            if shop.showingProuduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0){
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top,
                                 UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0){
                            FeaturedTabView()
                                .frame(minHeight: 256)
                                .padding(.vertical,20)
                            CategoryGridView()
                            TitleView(title: "Helmet")
                            LazyVGrid(columns: gridLayout,spacing:  15 , content: {
                                
                                ForEach(products) { item in
                                    ProductItemView(product: item)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = item
                                                shop.showingProuduct = true 
                                            }
                                        }
                                    
                                }// Loop
                            })//Grid
                            .padding(12)
                            
                            TitleView(title: "Brands")
                            BrandGridView()
                            FooterView()
                                .padding(.horizontal)
                        }//:VStack
                    })//:ScrollView
                    
                }//:VStack
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
            ProductDetailView()
            }
        }//:ZStack
        .ignoresSafeArea(.all,edges: .top)
    }
}
//MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
