//
//  Random_number_ViewModel.swift
//  Random Things
//
//  Created by Yunus Gündüz on 23.09.2023.
//

import Foundation
import SwiftUI

class Random_number_ViewModel {
    
    func get_random_number(min_number:String, max_number:String, min_equal:Bool,max_equal:Bool) -> Int {
     
        if min_number >= max_number {
            print("birinci sayi kucuk olamaz")
            return 0
        }
        print("Debug :\(min_equal) = \(max_equal) ")
        let minimim_number_converted = Int(min_number)
        let maximum_number_converted = Int(max_number)
        
        if(!min_equal && !max_equal){
            print("false = false ")
            return  Int.random(in: (minimim_number_converted!+1) ... (maximum_number_converted!-1))
        }
        if(min_equal && max_equal){
            print("true = true ")
            return Int.random(in: (minimim_number_converted!) ... (maximum_number_converted!))
        }
        if(min_equal && !max_equal){
            print("true = false ")
            return Int.random(in: (minimim_number_converted!) ... (maximum_number_converted!-1))
        }
       
        if(!min_equal && max_equal){
            print("false = true ")
            return Int.random(in: (minimim_number_converted!+1) ... (maximum_number_converted!))
        }
        
        
      
      
       
        return 9999
    }
    
}
