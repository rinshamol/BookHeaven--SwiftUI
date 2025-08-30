//
//  AadujeevithamView.swift
//  BookHeaven2
//
//  Created by Zakkariya K.A on 25/08/25.
//

import SwiftUI

struct AadujeevithamView: View {
    var body: some View {
        Text("Aadujeevitham")
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
        Spacer()
        Image(.aadujeevitham)
            .resizable()
            .scaledToFill()
        Spacer()
        Text("Aadujeevitham, or Goat Days in English, is a 2008 Malayalam novel by Benyamin, based on a true story about Najeeb, a Malayali migrant worker forced into slavery as a goatherd in Saudi Arabia. ")
            .fontWeight(.light)
            .padding()
    }
}

#Preview {
    AadujeevithamView()
}
