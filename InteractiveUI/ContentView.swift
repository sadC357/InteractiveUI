//
//  ContentView.swift
//  InteractiveUI
//
//  Created by SriSai on 7/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle="What is your name?"
    @State private var name=""
    
    @State private var ageTitle="What is your age?"
    @State private var age=""
    
    @State private var show = false
    
    var body: some View {
        VStack {
            Text(textTitle)
            
            TextField("", text: $name).multilineTextAlignment(.center).font(.title).border(Color.gray,width: 01)
            
            Text(ageTitle)
            
            TextField("", text: $age).multilineTextAlignment(.center).font(.title).border(Color.gray,width: 01)
            
            Button("Submit Name"){
                print(name)
                textTitle="Welcome,\(name) who is \(age)!!"
            }.font(.title2).buttonStyle(.borderedProminent).tint(.purple)
            
            Button("Alert") {
                        show = true
            }
            .alert("Important message", isPresented: $show) {
                Button("OK", role: .cancel) { }
            }
        }
    }
}

#Preview {
    ContentView()
}
