//
//  Random_number_View.swift
//  Random Things
//
//  Created by Yunus Gündüz on 22.09.2023.
//

import SwiftUI

struct Random_number_View: View {
  
   
    @State private var current_time = ""
    @State private var how_many_number = "5"
    @State private var random_number_list = [0]
    @State  var random_number = 0
    @State  var minimum_number = "0"
    @State  var maximum_number = "100"
    @State private var minimum_number_is_equal = false
    @State private var maximum_number_is_equal = false
    var random_number_vm = Random_number_ViewModel()
   
    let formatter = DateFormatter()
    var body: some View {
        VStack{
            VStack{
            Image("random_number").resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(3.0)
                    .padding(10)
            }   .padding(.bottom,20)
                
               
            HStack() {
                Text("Min number:")
                TextField("0 ", text: $minimum_number)
                    .textContentType(.telephoneNumber).font(.title)
                    .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 1)
                    .multilineTextAlignment(.center)
                
                Spacer()
                Toggle(isOn: $minimum_number_is_equal) {
                    
                    if minimum_number_is_equal {
                        Text("equal").foregroundColor(.green)
                    }else{  Text("equal").foregroundColor(.black)
                    }
                   
                }

            }.padding(.horizontal, 40)
            
            HStack() {
                Text("Max number:")
                TextField("5 ", text: $maximum_number)  .textContentType(.telephoneNumber).font(.title).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                Spacer()
                Toggle(isOn: $maximum_number_is_equal) {
                    if maximum_number_is_equal {
                        Text("equal").foregroundColor(.green)
                    }else{  Text("equal").foregroundColor(.black)
                    }
                }
            }.padding(.horizontal,40)
          
           
           
            Button {
                
              
              random_number =   random_number_vm.get_random_number(min_number: minimum_number, max_number: maximum_number,min_equal: minimum_number_is_equal,max_equal: maximum_number_is_equal)
       
              
                formatter.dateFormat = "hh:mm:ss"
                let now_formatted = formatter.string(from: .now)
                current_time = now_formatted
                print(current_time)
          
                
            } label: {
                Text("Get Number").padding(.top,10).foregroundColor(.red)
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
