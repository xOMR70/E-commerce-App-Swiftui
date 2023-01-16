//
//  ReatingsSizeDeatilView.swift
//  Touchdown
//
//  Created by Omar Bakri on 22/06/1444 AH.
//

import SwiftUI
//MARK: - PROPRETIES
private let sizes : [String] = ["XS" , "S" ,"M", "L", "XL"]

//MARK: - BODY
struct ReatingsSizeDeatilView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            
            //Ratings
            
            VStack(alignment: .leading, spacing: 3, content: {
                
                Text("Ratings".uppercased())
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: .center, spacing: 3, content: {
                    
                    ForEach(1...5 , id: \.self) { item in
                        Button(action: {}, label: {
                        Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }//:Button
                    
                })//:HStack
                
            })//:VStack
            
            Spacer()
            
            
            //Size
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("size".uppercased())
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(sizes, id: \.self) { size in
                        
                        Button(action: {}, label: {
                            
                        Text(size)
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray,lineWidth: 2)
                                )
                            
                        })//:Button
                        
                    }//loop
                    
                })//:HStack
                
            })//:VStack
            
        })//:HStack
    }
}


//MARK: - PREVIEW

struct ReatingsSizeDeatilView_Previews: PreviewProvider {
    static var previews: some View {
        ReatingsSizeDeatilView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
