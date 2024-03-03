//
//  DetailView.swift
//  Scrumdinger
//
//  Created by Marcello Gonzatto Birkan on 03/03/24.
//

import SwiftUI

struct DetailView: View {
  let scrum: DailyScrum
  
    var body: some View {
      List {
        Section(header: Text("Meeting Info")) {
          Label("Start Meeting", systemImage: "timer")
            .font(.headline)
            .foregroundStyle(.accent)
          
          HStack {
            Label("Lengrh", systemImage: "clock")
            
            Spacer()
            
            Text("\(scrum.lengthInMinutes) minutes")
          }
          .accessibilityElement(children: .combine)
          
          HStack {
            Label("Theme", systemImage: "paintpalette")
            
            Spacer()
            
            Text(scrum.theme.name)
              .padding(4)
              .foregroundStyle(scrum.theme.accentColor)
              .background(scrum.theme.mainColor)
              .clipShape(RoundedRectangle(cornerRadius: 4))
          }
          .accessibilityElement(children: .combine)
        }
      }
    }
}

#Preview {
  NavigationStack {
    DetailView(scrum: DailyScrum.sampleData[0])
  }
}
