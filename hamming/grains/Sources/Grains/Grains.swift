struct Grains {

    enum GrainsError : Error {
        case inputTooHigh(String)
        case inputTooLow(String)
    }

    static let total = UInt64.max

    static func square(_ value: Int) throws -> UInt64 {
        guard value > 0 else {
            throw GrainsError.inputTooLow("Input[\(value)] invalid. Input should be between 1 and 64 (inclusive)")
        }

        guard value <= 64 else {
            throw GrainsError.inputTooHigh("Input[\(value)] invalid. Input should be between 1 and 64 (inclusive)")
        }

        return UInt64(1) << (value - 1)
    }
}