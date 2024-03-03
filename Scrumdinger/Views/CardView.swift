//
//  CardView.swift
//  Scrumdinger
//
//  Created by Marcello Gonzatto Birkan on 02/03/24.
//

import SwiftUI

struct CardView: View {
  let scrum: DailyScrum
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(scrum.title)
        .font(.headline)
        .accessibilityAddTraits(.isHeader)
      
      Spacer()
      
      HStack {
        Label("\(scrum.attendees.count)", systemImage: "person.3")
          .accessibilityLabel("\(scrum.attendees.count) attendees")
        
        Spacer()
        
        Label("\(scrum.lengthInMinutes) Min", systemImage: "clock")
          .accessibilityLabel("\(scrum.lengthInMinutes) minute meeting")
          .labelStyle(.trailingIcon)
      }
      .font(.caption)
    }
    .padding()
    .foregroundStyle(scrum.theme.accentColor)
  }
}

#Preview {
  CardView(scrum: DailyScrum.sampleData[0])
    .frame(width: 400, height: 60)
}
