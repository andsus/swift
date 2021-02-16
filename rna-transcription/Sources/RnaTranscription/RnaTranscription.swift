
struct Nucleotide {
    let dnaStrand : String
    let rnaMap: [Character: String] = [ "G": "C", "C": "G", "T": "A", "A": "U"]
    init(_ dnaStrand: String) {
        self.dnaStrand = dnaStrand
    }

    func complementOfDNA() throws -> String {
        try dnaStrand.map {
            // $0.description is key of string in rnaMap
            guard let r = rnaMap[$0] else {
                throw TranscriptionError.invalidNucleotide(message: "\($0) is not a valid Nucleotide")
            }
            return r 
        }
        .reduce("", +)
    }
} 


enum TranscriptionError : Error {
    case invalidNucleotide(message : String)
}
