    func generatePassword(length: Int, withSymbols: Bool = true) -> String {
        var characters = letters + numbers
            characters += symbols
        
        return String((0..<length).compactMap{ _ in characters.randomElement() })
    }
}
