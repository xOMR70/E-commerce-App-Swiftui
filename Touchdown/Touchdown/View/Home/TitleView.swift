//
//  TitleView.swift
//  Touchdown
//
//  Created by Omar Bakri on 04/05/1444 AH.
//

import SwiftUI

struct TitleView: View {
    //MARK: - PROPRTIES
    var title: String
    //MARK: - BODY


    var body: some View {
        HStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }//:HStack
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}
//MARK: - PREVIEW

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helemet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
            .padding()
    }
}
