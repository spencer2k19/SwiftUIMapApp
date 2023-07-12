//
//  SwiftUIMapAppApp.swift
//  SwiftUIMapApp
//
//  Created by Loic HACHEME on 04/06/2023.
//

import SwiftUI

@main
struct SwiftUIMapAppApp: App {
    @StateObject private var vm = LocationsViewModel()
    var body: some Scene {
        WindowGroup {
           LocationsView()
                .environmentObject(vm)
        }
    }
}
