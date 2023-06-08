//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by Mayur Lohana on 6/9/23.
//

import Foundation


struct DailyScrum {
    var title: String
    var attendes: [String]
    var lengthInMinutes: Int
    var theme: Theme
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
