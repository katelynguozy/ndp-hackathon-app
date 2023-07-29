//
//  ContentView.swift
//  ndp hackathon app
//
//  Created by Katelyn Guo on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var questions: [Question] = [questions: "What year did Singapore gain independence and celebrate its first National Day?", answer: "Singapore gained independence on August 9, 1965"]
    @State private var nameEntered = ""
    @State private var nricEntered = ""
    @State private var ccnEntered = ""
    @State private var japInvasionDate = Date()
    @State private var topColour: Color = .gray
    @State private var bottomColour: Color = .gray
    @State private var decor = true
    @State private var decorTypes = ["sun","moon","star","circle","square","asterisks","exclamation marks","Swift"]
    @State private var selectedDecor = "sun"
    @State private var numDecor = 1
    
    
    @State private var screenNum = 0
    @State private var blackScreen = false
    @State private var blackScreenIsThere = false
    @State private var difficulties = ["Foreigner", "Recent Citizen", "Average Singaporean", "Singapore Historian", "iBong 14 Pro Max"]
    @State private var difficultyLevel = ""
    @State private var buttons = [ndp_hackathon_app.buttonStyle(buttonText: "Done                                                                 ", paddingAmount: 10.0), ndp_hackathon_app.buttonStyle(buttonText: "Click to Start", paddingAmount: 30.0), ndp_hackathon_app.buttonStyle(buttonText: "Finish Quiz                                                     ", paddingAmount: 10.0), ndp_hackathon_app.buttonStyle(buttonText: "", paddingAmount: 0.0)]
    
    var body: some View {
        ZStack {
            Color(red: 1, green: 0.9, blue: 0.9)
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
                        /*Section("**Singlish-ness of quiz**") {
                            Picker("How Singaporean do you think you are?", selection: $difficultyLevel) {
                                ForEach(difficulties, id:\.self) {
                                    Text($0)
                                }
                            }
                        }*/
                    }
                    .cornerRadius(35)
                } else if screenNum == 1 {
                    Text("**THE NDP QUIZ**")
                        .padding()
                        .font(.system(.largeTitle, design: .rounded))
                        .foregroundColor(.red)
                } else if screenNum == 2 {
                    ScrollView {
                        Section("Warmup") {
                            Text("What are the colours of the Singapore flag?")
                                .padding(10)
                                .background(LinearGradient(gradient: Gradient(colors: [topColour, bottomColour]), startPoint: .topTrailing, endPoint: .bottomTrailing))
                                .cornerRadius(15)
                            ColorPicker("Colour 1 (top)", selection: $topColour)
                            ColorPicker("Colour 2 (bottom)", selection: $bottomColour)
                            Toggle("Decorations/Accessories", isOn: $decor)
                            if decor == true {
                                Text("What decoration/accessory?")
                                Picker("What decoration/accessory?", selection: $selectedDecor) {
                                    ForEach(decorTypes, id:\.self) {
                                        Text($0)
                                    }
                                }
                                Stepper("\(numDecor) \(selectedDecor)(s)", value: $numDecor, in: 0...130)
                            }
                        }
                        Section("Actual Questions") {
                            DatePicker(selection: $japInvasionDate, in: ...Date(), displayedComponents: .date) {
                                Text("When did the Japanese invade Singapore?")
                            }
                        }
                    }
                    .padding(30)
                    .background(.white)
                    .cornerRadius(35)
                }
                Button {
                    withAnimation {
                        screenNum += 1
                    }
                    if screenNum == 1 {
                        blackScreen = true
                        blackScreenIsThere = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            blackScreenIsThere = false
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.00000000001) {
                                withAnimation {
                                    blackScreen = false
                                }
                            }
                        }
                    }
                } label: {
                    Text("**\(buttons[screenNum].buttonText)**")
                        .font(.title2)
                        .padding(buttons[screenNum].paddingAmount)
                        .foregroundColor(.white)
                        .background(.red)
                        .cornerRadius(20)
                }
            }
            if blackScreenIsThere {
                Color(red:0.1, green: 0, blue: 0)
                    .opacity(blackScreen ? 1 : 0)
            }
        }
        .background(blackScreen == true ? Color(red: 0.1, green: 0, blue: 0) : Color(red: 1, green: 0.9, blue: 0.9))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
