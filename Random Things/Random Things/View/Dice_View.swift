//
//  Dice_View.swift
//  Random Things
//
//  Created by Yunus Gündüz on 24.09.2023.
//

import SwiftUI
import SDWebImageSwiftUI

struct Dice_View: View {
    @State var isAnimating = false
    
    
    var body: some View {
        VStack{
          
            if isAnimating {
                AnimatedImage(name: "zar_donme.gif")
                   
                    .frame(width: 250,height: 500)
                     .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.3){
                            isAnimating.toggle()
                            
                          
                        }
                    }
               
            }else{
                
                Image("zar_\(Int.random(in: 1...6))")
                    .resizable()
                   
                    .frame(width: 250,height: 500)
            }
           
           
            Button(action: {
                isAnimating.toggle()
                print("asdasda")
            }, label: {
                Text("Rolling").padding(10)
            })
            
           .background(.black)
            .foregroundColor(.gray)
            .cornerRadius(10)
            Spacer()
         
        }.navigationTitle("Dice rolling")
       
    }
  
}

struct Dice_View_Previews: PreviewProvider {
    static var previews: some View {
        Dice_View()
    }
}
