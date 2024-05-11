// This example uses SwiftUI. You don't have to use SwiftUI for the generator, if you want to see the plain generator, go to generator.swift.
import SwiftUI

struct ExampleView: View { // Defines the view
    @State private var passwordLength: Double = 12
    @State private var letters: String = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    @State private var numbers: String = "0123456789"
    @State private var symbols: String = "!@#$%^&*(),.?\":{}|<>[]-_"
    @State private var generatedPassword = "" 
  
    var body: some View {
        VStack {
            TextField("Letters", text: $letters)
            TextField("Numbers", text: $numbers)
            TextField("Symbols", text: $symbols)
            Button("Generate Password") {
                generatedPassword = generatePassword(length: Int(passwordLength))
            }
            Text(generatedPassword)
        }
    }
  
    func generatePassword(length: Int, withSymbols: Bool = true) -> String {
        var characters = letters + numbers
        characters += symbols
        
        return String((0..<length).compactMap{ _ in characters.randomElement() })
    }
}
