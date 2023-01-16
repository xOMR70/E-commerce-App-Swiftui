//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Omar Bakri on 08/04/1444 AH.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
