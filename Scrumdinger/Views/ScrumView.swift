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
      List(scrums, id: \.title) {scrum in
        CardView(scrum: scrum)
          .listRowBackground(scrum.theme.mainColor)
        
      }
    }
}

#Preview {
  ScrumView(scrums: DailyScrum.sampleData)
}
