class Article {
    var id: Int?
    var title: String?
    var content: String?
    var authorId: Int?

    init(serverResponse: [String: Any]) {
        id = serverResponse["id"] as? Int
        title = serverResponse["title"] as? String
        content = serverResponse["content"] as? String
        authorId = serverResponse["authorId"] as? Int
    }

    class func initWith(serverResponse: Any?)-> [Article]? {
        if let serverResponse = serverResponse as? [[String: Any]] {
            var articles = [Article]()
            for response in serverResponse {
                articles.append(Article(serverResponse: response))
            }
            return articles
        }
        return nil
    }
}
