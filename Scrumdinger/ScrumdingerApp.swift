//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Mayur Lohana on 6/9/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
