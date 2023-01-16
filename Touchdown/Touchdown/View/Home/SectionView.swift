//
//  SectionView.swift
//  Touchdown
//
//  Created by Omar Bakri on 09/04/1444 AH.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPRETIES
    
    @State var rotateClockwise: Bool
    //MARK: - BODY
    var body: some View {
        VStack(spacing:0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        }//:VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}
//MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
