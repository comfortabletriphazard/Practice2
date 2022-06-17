//
//  ContentView.swift
//  Practice2
//
//  Created by Michael McAlarney on 17/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    var words = ["Dirty", "Saddistic", "Assertive", "Unconventional", "Irritating", "Princess", "Peasant", "Champion", "Eejit"]
    @State private var selectedWord = "Saddistic"
    
    var words2 = ["Speller", "Complainer", "Menace", "Monstrosity", "Pig", "Trollop", "Silence", "Tumble"]
    @State private var selectedWord2 = "Speller"
    
    var body: some View {
        NavigationView {
            VStack {
                Section {
                Picker("Select a word", selection: $selectedWord) {
                    ForEach(words, id: \.self) {
                        Text($0)
                    }
                }
                    Picker("Select a word", selection: $selectedWord2) {
                        ForEach(words2, id: \.self) {
                            Text($0)
                        }
                }
                     Text("\n\n\(selectedWord)  "+"\(selectedWord2)\n")
//            }
            .navigationTitle("Name Brainstormer")
        }
    }
}
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
