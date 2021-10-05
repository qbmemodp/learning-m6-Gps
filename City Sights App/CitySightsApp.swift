//
//  CitySightsApp.swift
//  City Sights App
//
//  Created by Mohammed on 10/5/21.
//

import SwiftUI

@main
struct CitySightsApp: App {
    var body: some Scene {
        WindowGroup {
            LaunchView()
                .environmentObject(ContentModel())
        }
    }
}
