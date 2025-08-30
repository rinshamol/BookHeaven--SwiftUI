//
//  CinderellaView.swift
//  BookHeaven2
//
//  Created by Zakkariya K.A on 25/08/25.
//

import SwiftUI

struct CinderellaView: View {
    var body: some View {
        Text("Cinderella").fontWeight(.bold)
            .multilineTextAlignment(.center)
        Spacer()
        Image(.cinderella)
            .resizable()
            .scaledToFill()
        Spacer()
        Text("Cinderella (or Cendrillon) is a classic fairy tale published in 1697 by Charles Perrault in his collection Tales of Mother Goose. The story follows a kind young woman cruelly treated by her stepfamily")
            .fontWeight(.light)
            .padding()
    }
}

#Preview {
    CinderellaView()
}
