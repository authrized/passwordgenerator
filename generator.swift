    func generatePassword(length: Int, withSymbols: Bool = true) -> String { // The function that can be called
        var characters = letters + numbers // Makes the characters to use
        if withSymbols {
            characters += symbols
        }        
        return String((0..<length).compactMap{ _ in characters.randomElement() }) // Randomizes and finalizes the password
    }
}
