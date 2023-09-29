//
//  Shake_number_View.swift
//  Random Things
//
//  Created by Yunus Gündüz on 29.09.2023.
//

import SwiftUI

struct Shake_number_View: View {
    @State var shake_number = 0
    var random_number_VM = Random_number_ViewModel()
    var body: some View {
        VStack{
            Text("Shake: \(shake_number)").onShake {
                
                shake_number = random_number_VM.get_random_number(min_number: "0", max_number: "100", min_equal: true, max_equal: true)
            }
        }
     
    }
   
}


#Preview {
    Shake_number_View()
}
