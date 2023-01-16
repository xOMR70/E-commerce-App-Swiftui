//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Omar Bakri on 12/06/1444 AH.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - PROPRETIES
    @EnvironmentObject var shop:Shop
    //MARK: - BODY
    var body: some View {
        HStack {
      Button(action: {
          feedback.impactOccurred()
          shop.selectedProduct = nil
          shop.showingProuduct = false
      }, label: {
          Image(systemName: "chevron.left")
              .font(.title)
              .foregroundColor(.white)
      })
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }//:HStack
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
