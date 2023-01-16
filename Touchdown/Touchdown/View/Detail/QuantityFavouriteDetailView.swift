//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Omar Bakri on 22/06/1444 AH.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: - PROPRETIES
    @State private var counter: Int = 0
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                feedback.impactOccurred()
                if counter > 0 {
                    
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
                Text("\(counter)")
                    .fontWeight(.semibold)
                    .frame(minWidth: 36)
            })
            Button(action: {
                feedback.impactOccurred()
                if counter < 100{
                    counter += 1
                    
                }
                
            }, label: {
                Image(systemName: "plus.circle")
                    .fontWeight(.semibold)
                    .frame(minWidth: 36)
            })
            Spacer()
            
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                .foregroundColor(.pink)            })
        })//:HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
