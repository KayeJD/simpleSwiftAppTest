//
//  ContentView.swift
//  simpleTest
//
//  Created by Kaye on 1/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    
    var body: some View {
        VStack(spacing: 10){
            Text("Sample App")
                .font(.largeTitle)
            
            Text("Input your first and last name:")
        }
            
        Form {
            Section{
                TextField(
                    "First Name",
                    text: $firstName
                )
                TextField(
                    "Last Name",
                    text: $lastName
                )
            }

        }

        Button(action: {}) {
            Text("Show Message")
              .padding()
              .foregroundColor(.white)
              .background(.pink)
              .cornerRadius(10)
        }
        .shadow(color: .red, radius: 15, y: 5)
    }
}

#Preview {
    ContentView()
}
