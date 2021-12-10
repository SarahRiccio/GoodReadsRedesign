//
//  GoodReadsRedesignApp.swift
//  GoodReadsRedesign
//
//  Created by Sarah Riccio on 10/12/21.
//

import SwiftUI

@main
struct GoodReadsRedesignApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
