//
//  ContentView.swift
//  ndp hackathon app
//
//  Created by Katelyn Guo on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textEntered = ""
    @State private var difficulty = 5.0
    @State private var screenNum = 0
    @State private var buttons = [ndp_hackathon_app.buttonStyle(buttonText: "Done", paddingAmount: 10.0), ndp_hackathon_app.buttonStyle(buttonText: "Click to Start", paddingAmount: 30.0), ndp_hackathon_app.buttonStyle(buttonText: "Finish Quiz", paddingAmount: 50.0), ndp_hackathon_app.buttonStyle(buttonText: "", paddingAmount: 0.0)]
    
    var body: some View {
        VStack {
            
            if screenNum == 0 {
                Text("**THE NDP QUIZ**")
                    .padding()
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(.red)
                Form {
                    Section("**WHO ARE YOU**"){
                        TextField("Name", text: $textEntered)
                            .textFieldStyle(.roundedBorder)
                        TextField("NRIC", text: $textEntered)
                            .textFieldStyle(.roundedBorder)
                        TextField("Credit Card Number ", text: $textEntered)
                            .textFieldStyle(.roundedBorder)
                        // error below 
                        Text("Difficulty level of quiz aka the Singaporean-ness of the Quiz")
                        Slider(value:$difficulty, in: 0...5,)
                        
                    }
                }
                
                
            } else if screenNum == 1 {
                Text("**THE NDP QUIZ**")
                    .padding()
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(.red)
            }
            Button {
                screenNum += 1
            } label: {
                Text("**\(buttons[screenNum].buttonText)**")
                    .font(.title2)
                    .padding(buttons[screenNum].paddingAmount)
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
