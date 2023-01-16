//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Omar Bakri on 12/06/1444 AH.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPRTIES
    let brand: BrandModel
    //MARK: - BODY

    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding(3)
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 2)
            )
    }
}
//MARK: - PREVIEW

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[1])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
    }
}
