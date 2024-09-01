//
//  ContentView.swift
//  Word Counter
//
//  Created by Armaan Khan  on 31/08/24.
//

import SwiftUI

struct ContentView: View {
    @State private var words = ""
    
    var wordCount: Int {
        return words.split(separator: " ").count
    }
    
    var body: some View {
        NavigationStack {
            Spacer()
            Text("Type in the text Box and click on the buttton to count the words")
            Spacer()
            Spacer()
            
            TextEditor(text: $words)
                .frame(minHeight: 100)
                .border(Color.gray)
           
            
            Text("Word count : \(wordCount)")
            
            Spacer()
            Spacer()
            Spacer()
            
            
            
            
                .navigationTitle("Word Counter")
                .navigationBarTitleDisplayMode(.inline)
        }
        
        
    }
}

#Preview {
    ContentView()
}
