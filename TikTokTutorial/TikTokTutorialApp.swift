//
//  TikTokTutorialApp.swift
//  TikTokTutorial
//
//  Created by Jatin Patel on 4/6/24.
//

import SwiftUI

@main
struct TikTokTutorialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
