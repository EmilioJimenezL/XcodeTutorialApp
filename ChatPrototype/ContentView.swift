//
//  ContentView.swift
//  ChatPrototype
//
//  Created by iOS Lab on 20/01/26.
//

import SwiftUI

let buttonGrid = [
    ["delete.left", "c.square.", "percent", "divide.square"],
    ["7.square","8.square","9.square","multiply.square"],
    ["4.square","5.square","6.square","minus.square"],
    ["1.square","2.square","3.square","plus.square"],
    ["plusminus.circle","0.square","dot.square","equal.square"]
]

struct ContentView: View {
    var body: some View {
        VStack(){
            HStack{
                Spacer()
                Text("Sample Num: 123+456=579")
                    .padding()
            }
            HStack{
                Spacer()
                Text("Sample num: 678")
                    .padding()
            }
            Grid{
                ForEach(buttonGrid, id: \.self){row in
                    GridRow{
                        ForEach(row, id: \.self){col in
                            Button(action:{
                                print("pressed" + col)
                            }){
                                Image(systemName: col)
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
