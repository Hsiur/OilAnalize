//
//  OilAnalizeApp.swift
//  OilAnalize
//
//  Created by Руслан Ишмухаметов on 10.08.2023.
//

import SwiftUI

@main
struct MapAppApp: App {
    
    @StateObject private var vm = LocationViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
