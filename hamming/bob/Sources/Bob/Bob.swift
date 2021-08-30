import Foundation

struct Bob {
    static func hey(_ input: String) -> String {
        switch input {
        case _ where input.trimmingCharacters(in: .whitespaces).isEmpty:
            return "Fine. Be that way!"
        case _ where input == input.uppercased() && input.rangeOfCharacter(from: CharacterSet.letters) != nil:
            return "Whoa, chill out!"
        case _ where input.hasSuffix("?"):
            return "Sure."
        default:
            return "Whatever."
        }
    }
}