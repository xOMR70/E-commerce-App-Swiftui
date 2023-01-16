//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Omar Bakri on 12/06/1444 AH.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPRTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout , spacing: columnSpacing , content: {
                
                ForEach(brands) {
                    brand in
                    BrandItemView(brand: brand)
                }

            })//:Grid
            .frame(height: 200)
            .padding(15)
        })//: Scroll
    }
}
//MARK: - PREVIEW
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
