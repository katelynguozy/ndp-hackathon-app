//
//  ContentView.swift
//  ndp hackathon app
//
//  Created by Katelyn Guo on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var nameEntered = ""
    @State private var nricEntered = ""
    @State private var ccnEntered = ""
    @State private var screenNum = 0
    @State private var difficulties = ["Foreigner", "Recent Citizen", "Average Singaporean", "Singapore Historian", "iBong 14 Pro Max"]
    @State private var difficultyLevel = ""
    @State private var buttons = [ndp_hackathon_app.buttonStyle(buttonText: "Done                                                                 ", paddingAmount: 10.0), ndp_hackathon_app.buttonStyle(buttonText: "Click to Start", paddingAmount: 30.0), ndp_hackathon_app.buttonStyle(buttonText: "Finish Quiz", paddingAmount: 50.0), ndp_hackathon_app.buttonStyle(buttonText: "", paddingAmount: 0.0)]
    
    var body: some View {
        VStack {
            
            if screenNum == 0 {
                Text("**THE NDP QUIZ**")
                    .padding()
                    .font(.system(.largeTitle, design: .rounded))
                    .foregroundColor(.red)
                Form {
                    Section("**WHO ARE YOU**"){
                        TextField("Name", text: $nameEntered)
                            .textFieldStyle(.roundedBorder)
                        TextField("NRIC", text: $nricEntered)
                            .textFieldStyle(.roundedBorder)
                        TextField("Credit Card Number", text: $ccnEntered)
                            .textFieldStyle(.roundedBorder)
                    }
                    Section("**Singlish-ness of quiz**") {
                        Picker("How Singaporean do you think you are?", selection: $difficultyLevel) {
                                                
                                                //better, faster method
                                                ForEach(difficulties, id:\.self) {
                                                    Text($0)
                                                }
                                            }
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
