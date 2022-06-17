//
//  ContentView.swift
//  Practice2
//
//  Created by Michael McAlarney on 17/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var button  = "Get Your Title"
    @State var x = ""
    @State var y = ""
    
    var body: some View {
        NavigationView {
            Form{
                TextField("Enter a word", text: $x)
                TextField("Enter a word", text: $y)
            
                Button(button) {
                    button = x + " " + y
                }
            }
            .navigationTitle("Title Brainstormer")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
