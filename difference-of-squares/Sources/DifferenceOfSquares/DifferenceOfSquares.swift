class Squares {
    let n: Int 
    private let square: (Int) -> Int = { $0 * $0 }

    init(_ n: Int) { 
        self.n = n
    }
    // Use lazy var property to avoid computation everytime
    private(set) lazy var squareOfSum: Int =  {
       return square( (1...self.n).reduce(0, +) )    
       //(n * (n + 1) / 2) ^ 2
    }()

    private(set) lazy var sumOfSquares: Int = {
        // n * (n + 1) * (2*n + 1) / 6
        return (1...self.n)
            .map (square)
            .reduce(0,+)
    }()

    private(set) lazy var differenceOfSquares: Int = {
        return squareOfSum - sumOfSquares
    }()

}