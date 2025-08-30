//
//  ContentView.swift
//  BookHeaven2
//
//  Created by Zakkariya K.A on 25/08/25.
//

import SwiftUI

struct ContentView: View {
    @State var bkName : String = ""
    @State var bkList : [String] = []
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Book Heaven")
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
                HStack{
                    HStack{
                        Image(systemName: "book")
                        TextField("Add Book Name", text: $bkName)
                    }
                        .padding()
                        .frame(width: 300)
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(.blue)
                        )
                    Button(action:{
                        if(!bkName.isEmpty){
                            bkList.append(bkName)
                            bkName = ""
                        }
                       
                    }){ Image(systemName:"plus")}
                }
                    .padding()
                    .foregroundColor(.gray)

                List {
                        ForEach(bkList,id: \.self){ item in
                            
                            NavigationLink(destination :destinationView(for: item) ){
                                HStack{
                                    Image(String(item).lowercased().replacingOccurrences(of: " ", with: "")
                                    )
                                        .resizable()
                                        .scaledToFit()
                                    Text(item)
                                        .padding()
                                }
                                .frame(height: 100)
                            }
                        }
                        .onDelete{ indexSet in
                            bkList.remove(atOffsets: indexSet)
                        }
                    if bkList.isEmpty {
                        Text("List is Empty")
                            .foregroundColor(.gray)
                    }
                        
                    }
                
                }

            }
        }
    @ViewBuilder
    func destinationView(for item: String) -> some View {
        switch item.lowercased() {
        case "harry potter":
            HarryPatterView()
        case "aadujeevitham":
            AadujeevithamView()
        case "toy story":
            ToyStoryView()
        case "cinderella":
            CinderellaView()
        default:
            Text("No view found for \(item)")
        }
    }

    
}


#Preview {
    ContentView()
}
