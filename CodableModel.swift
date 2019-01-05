class Article: Codable {

    let id: Int?
    let title: String? 
    let content: String?
    let authorID: Int?

    enum CodingKeys: String, CodingKey {
        case id, title, content
        case authorID = "authorId"
    }
}
