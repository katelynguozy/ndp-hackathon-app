//
//  ContentView.swift
//  ndp hackathon app
//
//  Created by Katelyn Guo on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var homeScreen = true
    
    var body: some View {
        VStack {
            if homeScreen == true{
                Text("**THE NDP QUIZ**")
                    .padding()
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(.red)
                }
                Button {
                
                } label: {
                    Text("**Click to Start**")
                        .padding(30)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(20)
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
