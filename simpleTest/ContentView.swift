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
    @State private var greetingMessage: String = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Sample App")
                .font(.largeTitle)
            Text("Input your first and last name:")
        }
        
        Form{
            Section{
                TextField(
                    "First Name",
                    text: $firstName
                ).disableAutocorrection(true)
                TextField(
                    "Last Name",
                    text: $lastName
                ).disableAutocorrection(true)
            }
            
            Section {
                Text(greetingMessage)
                    .font(.headline)
                    .padding()
            }
        }
        
        Section {
            HStack{
                Button(action: {
                    showGreeting()
                }) {
                    Text("Greeting")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                }.shadow(color: .blue, radius: 5, y: 5)
                
                Button(action: {
                    resetFields()
                }) {
                    Text("Reset")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .cornerRadius(10)
                }
            }
        }
    }
    
    func resetFields() {
        firstName = ""
        lastName = ""
        greetingMessage = ""
    }
    
    func showGreeting() {
        if firstName.isEmpty || lastName.isEmpty {
            greetingMessage = "Please enter both your first and last name."
        } else {
            greetingMessage = "\(firstName) \(lastName) Welcome to CSE 335"
        }
    }

}

#Preview {
    ContentView()
}
