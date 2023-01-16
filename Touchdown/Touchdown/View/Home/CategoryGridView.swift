//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Omar Bakri on 09/04/1444 AH.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPRETIES
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content:{
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                
                Section( header: SectionView(rotateClockwise: false),
                         footer: SectionView(rotateClockwise: true)
                ){
                    ForEach(categories) { item in
                        CategoryItemView(category: item)
                    }
                }//:LOOP
            })//:GRID
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)


            
        })//:ScrollView
    }
}
//MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
