//
//  ContentView.swift
//  Random Things
//
//  Created by Yunus Gündüz on 22.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                
                HStack{
                    
                    NavigationLink(destination: Random_number_View()) {
                        VStack{
                            Image("random_number").resizable().frame(width: 100, height: 100)
                            .aspectRatio(contentMode: .fit)
                            Text("number").foregroundColor(Color.black)
                        }   .padding(10)
                            .border(Color.red, width: 0.6)
                            .cornerRadius(
                                5.0)
                        
                    }
                    
                    
                    Spacer().frame(width: 30)
                    
                    
                    NavigationLink(destination: Dice_View()) {
                        VStack{
                            Image("dice").resizable().frame(width: 100, height: 100)
                              
                            Text("dice").foregroundColor(Color.black).aspectRatio(contentMode: .fit)
                        }       .padding(10)
                            .border(Color.black, width: 0.6)
                            .cornerRadius(3.0)
                        
                    }
                }
                
                HStack{
                    
                    NavigationLink(destination: Random_number_View()) {
                        VStack{
                            Image("lotto").resizable().frame(width: 100, height: 100)  .aspectRatio(contentMode: .fit)
                            Text("lotto").foregroundColor(Color.black)
                            
                        }   .padding(10)
                            .border(Color.black, width: 0.6)
                            .cornerRadius(3.0)
                    }
                    
                    Spacer().frame(width: 30)
                    
                    NavigationLink(destination: Random_number_View()) {
                        VStack{
                            Image("coins").resizable().frame(width: 100, height: 100)  .aspectRatio(contentMode: .fit)
                            Text("coins").foregroundColor(Color.black)
                            
                        }   .padding(10)
                            .border(Color.black, width: 0.6)
                            .cornerRadius(3.0)
                    }
                    
                }
                
                HStack{
                    
                    NavigationLink(destination: Random_number_View()) {
                        VStack{
                            Image("list1").resizable().frame(width: 100, height: 100)  .aspectRatio(contentMode: .fit)
                            Text("lists").foregroundColor(Color.black)
                            
                        }   .padding(10)
                            .border(Color.black, width: 0.6)
                            .cornerRadius(3.0)
                    }
                    Spacer().frame(width: 30)
                    NavigationLink(destination: Random_number_View()) {
                        VStack{
                            Image("list2").resizable().frame(width: 100, height: 100)  .aspectRatio(contentMode: .fit)
                            Text("cast lots").foregroundColor(Color.black)
                            
                        }   .padding(10)
                            .border(Color.black, width: 0.6)
                            .cornerRadius(3.0)
                    }
                    
                }
            }.navigationTitle("Random Things")
        }.padding(.top,10)
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
