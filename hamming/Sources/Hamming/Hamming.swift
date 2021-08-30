struct Hamming {
    static func compute(_ leftStrand: String, against rightStrand: String) -> Int? {

        guard leftStrand.count == rightStrand.count else { return nil }

        return zip(leftStrand, rightStrand).filter { $0 != $1 }.count
    }
}