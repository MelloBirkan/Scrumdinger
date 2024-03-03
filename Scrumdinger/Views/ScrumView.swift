//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by Marcello Gonzatto Birkan on 03/03/24.
//

import SwiftUI

struct ScrumView: View {
  let scrums: [DailyScrum]
  
  var body: some View {
    NavigationStack {
      List(scrums) {scrum in
        NavigationLink(destination: Text(scrum.title)) {
          CardView(scrum: scrum)
        }
        .listRowBackground(scrum.theme.mainColor)
      }
      .navigationTitle("Daily Scrums")
      .toolbar {
        Button(action: {}, label: {
          Image(systemName: "plus")
        })
        .accessibilityLabel("New Scrum")
      }
    }
  }
}

#Preview {
  ScrumView(scrums: DailyScrum.sampleData)
}
