//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Omar Bakri on 09/04/1444 AH.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPRETIES
    let player: PlayerModel
    //MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
            
    }
}
//MARK: - PREVIEW

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
