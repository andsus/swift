//Solution goes in Sources
import Foundation

struct Gigasecond {
    var description: String = ""
    // static type property 
    static let dateFormatter: DateFormatter = {
        let dt = DateFormatter()
        dt.locale = Locale(identifier: "en_US_POSIX")
        dt.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dt.timeZone = TimeZone(secondsFromGMT: 0)
        return dt 
    }()
    
    static let gigaSec: TimeInterval = 1_000_000_000

    init?(from: String) {
        guard let initialDate = Gigasecond.dateFormatter.date(from: from) else {
           return nil
        }
        let newDate = initialDate.addingTimeInterval(Gigasecond.gigaSec)
        description = Gigasecond.dateFormatter.string(from: newDate)

    }
}