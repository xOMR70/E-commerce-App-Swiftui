//
//  CodableBundleExtensions.swift
//  Touchdown
//
//  Created by Omar Bakri on 09/04/1444 AH.
//

import Foundation

extension Bundle{
    
    func decode<T: Codable>(_ file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("failed to locate \(file) in bundle.")
        }
            guard let data = try? Data(contentsOf: url) else {
              fatalError("Failed to load \(file) from bundle.")
            }
            let decoder = JSONDecoder()
            
            guard let decodedData = try? decoder.decode(T.self, from: data) else{
                fatalError("failed to locate \(file) in bundle.")
            }
            
        return decodedData
        }
}
