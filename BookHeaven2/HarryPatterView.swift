//
//  HarryPatterView.swift
//  BookHeaven2
//
//  Created by Zakkariya K.A on 25/08/25.
//

import SwiftUI

struct HarryPatterView: View {
    var body: some View {
        Text("Harry Potter")
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
        Spacer()
        Image(.harrypotter)
            .resizable()
            .scaledToFill()
        Spacer()
        Text("The Harry Potter book series, written by British author J. K. Rowling, details the adventures of a young wizard, who discovers his magical heritage on his eleventh birthday and attends Hogwarts School of Witchcraft and Wizardry")
            .fontWeight(.light)
            .padding()
    }
}

#Preview {
    HarryPatterView()
}
