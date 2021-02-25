import Foundation

struct Interval: Codable {
    let name: String
    let over: Double?
    let timeOver: Int?
    let cadenceOver: Int?
    let under: Double?
    let timeUnder: Int?
    let cadenceUnder: Int?
    let cadence: Int?
    let duration: Int?
    let repetitions: Int?
    let rest: Double?
    let type: String
}
