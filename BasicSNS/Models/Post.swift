import Foundation

struct Post: Identifiable {
    var id: String
    var content: String
    var author: String
    var timestamp: Date
    var likes: Int
}
