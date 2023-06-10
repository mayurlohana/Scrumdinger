//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Mayur Lohana on 6/9/23.
//

import Foundation


struct DailyScrum: Identifiable {
    let id: UUID
    var title: String
    var attendes: [Attendee]
    var lengthInMinutes: Int
    var lengthInMinutesAsDouble: Double {
        get {
            Double(lengthInMinutes)
        }
        
        set {
            lengthInMinutes = Int(newValue)
        }
    }
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendes: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        self.attendes = attendes.map { Attendee(name: $0) } 
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}

extension DailyScrum {
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    static var emptyScrum: DailyScrum {
        DailyScrum(title: "", attendes: [], lengthInMinutes: 5, theme: .sky)
    }
}

extension DailyScrum {
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendes: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        DailyScrum(title: "App Dev",
                   attendes: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                   lengthInMinutes: 10,
                   theme: .orange),
        DailyScrum(title: "Web Dev",
                   attendes: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"],
                   lengthInMinutes: 10,
                   theme: .poppy)
        
    ]
}
