//
//  LogoView.swift
//  Touchdown
//
//  Created by Omar Bakri on 08/04/1444 AH.
//

import SwiftUI

struct LogoView: View {
    //MARK: - PROPRETIES

    //MARK: - BODY
    var body: some View {
        HStack(spacing: 4){
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
                        
        }//:HStack
    }
}
//MARK: - PREVIEW
struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
