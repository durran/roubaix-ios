import Foundation

struct Workout: Codable {
    let _id: String
    let name: String
    let intervals: [Interval]
}
