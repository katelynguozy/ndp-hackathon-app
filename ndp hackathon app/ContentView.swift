//
//  ContentView.swift
//  ndp hackathon app
//
//  Created by Katelyn Guo on 22/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var vstackShows = true
    
    var body: some View {
        VStack {
            Text("**THE NDP QUIZ**")
                .padding()
                .font(.system(.largeTitle, design: .rounded))
                .foregroundColor(.red)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
