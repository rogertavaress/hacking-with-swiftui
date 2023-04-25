//
//  ContentView.swift
//  WeSplit
//
//  Created by Rogério Tavares on 24/04/23.
//

import SwiftUI

struct ContentView: View {
    let students = ["Rogério", "Suelen"]
    @State private var selectedStudents = "Rogério"
    
    var body: some View {
        NavigationView {
            Form {
                Picker("Selecione um estudante", selection: $selectedStudents) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
            .navigationTitle("Linhas")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
