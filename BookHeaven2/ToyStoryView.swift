//
//  ToyStoryView.swift
//  BookHeaven2
//
//  Created by Zakkariya K.A on 25/08/25.
//

import SwiftUI

struct ToyStoryView: View {
    var body: some View {
        Text("Toy Story")
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
        Spacer()
        Image(.toystory)
            .resizable()
            .scaledToFill()
        Spacer()
        Text("Sheriff Woody, a cowboy doll who feels threatened by the arrival of a new, high-tech toy, Buzz Lightyear, as the new favorite of his owner, Andy")
            .fontWeight(.light)
            .padding()
    }
}

#Preview {
    ToyStoryView()
}
