//
//  CardView.swift
//  Scrumdinger
//
//  Created by Mayur Lohana on 6/9/23.
//

import SwiftUI


struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            Spacer()
            HStack {
                Label("\(scrum.attendes.count)", systemImage: "person.3")
                    .accessibilityLabel("\(scrum.attendes.count) attendees")
                Spacer()
                Label("\(scrum.lengthInMinutes)", systemImage: /*@START_MENU_TOKEN@*/"clock"/*@END_MENU_TOKEN@*/)
                    .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}


struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
