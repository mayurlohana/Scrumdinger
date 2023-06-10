//
//  DetailedEditView.swift
//  Scrumdinger
//
//  Created by Mayur Lohana on 6/10/23.
//

import SwiftUI

struct DetailedEditView: View {
    @State private var scrum = DailyScrum.emptyScrum
    @State private var newAttendeeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting Info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                        .accessibilityHidden(true)
                }
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendes) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    scrum.attendes.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Attendee", text: $newAttendeeName)
                    Button(action: {
                        withAnimation {
                            let attendee = DailyScrum.Attendee(name: newAttendeeName)
                            scrum.attendes.append(attendee)
                            newAttendeeName = ""
                        }
                    }) {
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(newAttendeeName.isEmpty)
                }
            }
        }
    }
}

struct DetailedEditView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedEditView()
    }
}
