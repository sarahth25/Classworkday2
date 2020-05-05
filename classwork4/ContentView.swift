//
//  ContentView.swift
//  classwork4
//
//  Created by sarah alshammari on 5/4/20.
//  Copyright © 2020 sarah. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counter : [String]=["0","0","0"]
    var body: some View {
        VStack{
            thekrbutton(counter: $counter[0])
            thekrbutton(counter: $counter[1])
            thekrbutton(counter: $counter[2])


        }}
        }
            
            


        



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct thekrbutton: View {
@Binding var counter:String
var body: some View {
        HStack{
            Text("استغفرالله العظيم").font(.largeTitle)
            Button(action:{
                self.counter = String(Int(self.counter)! + 1)
            }){
                Text(counter)
                    .font(.largeTitle)
            }
            .frame(width:100,height:100,alignment:.center)
            .foregroundColor(.white)
            .background(Color.green)
            .clipShape(Circle())
            .padding()
            
        }
    }
}
