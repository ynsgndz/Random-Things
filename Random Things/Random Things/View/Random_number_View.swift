//
//  Random_number_View.swift
//  Random Things
//
//  Created by Yunus Gündüz on 22.09.2023.
//

import SwiftUI

struct Random_number_View: View {
    @State var random_number = 0
    @State var current_time = ""
    @State var how_many_number = "5"
    @State var random_number_list = []
    let formatter = DateFormatter()
    var body: some View {
        VStack{
            HStack() {
                Text("Min number : 1")
                Spacer()
                Text("is equal  : Yes")
            }.padding(.horizontal, 40)
            
            HStack() {
                Text("Max number : 1")
                Spacer()
                Text("is equal  : Yes")
            }.padding(.horizontal,40)
          
            HStack{
                TextField("How many number: 5", text: $how_many_number)
                    .textContentType(.telephoneNumber)
            }.padding(.horizontal,40)
           
            Button {
                random_number = Int.random(in: 0..<5)
                
                print(random_number)
              
                formatter.dateFormat = "hh:mm:ss"
                let now_formatted = formatter.string(from: .now)
                current_time = now_formatted
                print(current_time)
          
                
            } label: {
                Text("Get Number")
            }
            .padding(.bottom,20)
            
            Text("\(random_number)").font(.largeTitle)
            Spacer().frame(height: 20)
            Text("\(current_time)").font(.title3).foregroundColor(.gray)
        }.navigationTitle("Random Number")
        
     
    }
}

struct Random_number_View_Previews: PreviewProvider {
    static var previews: some View {
        Random_number_View()
    }
}
