//
//  ContentView.swift
//  ndp hackathon app
//
//  Created by Katelyn Guo on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var screenNum = 1
    @State private var buttons = [buttonStyle(buttonText: "Done", paddingAmount: <#T##Double#>), buttonStyle(buttonText: "Click to Start", paddingAmount: <#T##Double#>), buttonStyle(buttonText: "Finish Quiz", paddingAmount: <#T##Double#>)]
    
    var body: some View {
        VStack {
            if screenNum == 1 {
                Text("**THE NDP QUIZ**")
                    .padding()
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(.red)
                Button {
                    screenNum = 2
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
