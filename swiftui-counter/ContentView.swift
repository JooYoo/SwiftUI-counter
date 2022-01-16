//
//  ContentView.swift
//  swiftui-counter
//
//  Created by Yu on 2022/1/16.
//

import SwiftUI

struct ContentView: View {
    @State private var count:Int = 0
    
    var body: some View {
        VStack {
            Text("\(count)")
                .padding()
                .font(.system(size: 50, weight: .bold))
            
            HStack{
                Button("-", action: {
                    count -= 1
                })
                .padding()
                .font(.system(size: 30))
               
                Button("reset", action: {
                    count = 0
                })
                .padding()
                .font(.system(size: 30))
                
                Button("+", action: {
                    count += 1
                })
                .padding()
                .font(.system(size: 30))
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDisplayName("iPhone 12")
            .previewDevice("iPhone 12")
    }
}
