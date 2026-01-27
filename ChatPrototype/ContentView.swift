//
//  ContentView.swift
//  ChatPrototype
//
//  Created by iOS Lab on 20/01/26.
//

import SwiftUI

let buttonGrid = [
    ["delete.left.fill", "c.circle.fill", "percent", "divide"],
    ["7","8","9","multiply"],
    ["4","5","6","substract"],
    ["1","2","3","add"],
    ["invert","0","point","equal"]
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
