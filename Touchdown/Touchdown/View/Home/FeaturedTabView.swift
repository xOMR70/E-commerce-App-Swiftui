//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Omar Bakri on 09/04/1444 AH.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { item in
                FeaturedItemView(player:  item)
                    .padding(.top,10)
                    .padding(.horizontal,15)
            }
        }//:TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
