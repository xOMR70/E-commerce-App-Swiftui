//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Omar Bakri on 09/04/1444 AH.
//

import SwiftUI

struct CategoryItemView: View {
    //MARK: - PROPRTEIS
    let category: CategoryModel
    
    //MARK: - BODY
    var body: some View {
       Button(action: {}, label: {
           HStack(alignment: .center, spacing: 6){
               
               Image(category.image)
                   .renderingMode(.template)
                   .resizable()
                   .scaledToFit()
                   .frame(width: 30, height: 30, alignment: .center)
                   .foregroundColor(.gray)
               
               Text(category.name.uppercased())
                   .foregroundColor(.gray)
                   
               Spacer()
                
           }//:HStack
           .padding()
           .background(Color.white.cornerRadius(12))
           .background(
           RoundedRectangle(cornerRadius: 12)
            .stroke(Color.gray,lineWidth: 1)
           )
           
       })//:Button
    }
}
//MARK: - PREVIEW
struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
