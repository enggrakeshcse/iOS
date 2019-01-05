    func loadArticles() {
        if let url = URL(string: "http://13.232.104.99/articles/") {
         MBProgressHUD.showAdded(to: view, animated: true)
            Alamofire.request(url).responseData{ [unowned self] (response) in
                if let data = response.data {
                    do {
                        self.articles = try JSONDecoder().decode([Article].self, from: data)
                    } catch {
                        print(error)
                    }
                    self.tableView.reloadData()
                    MBProgressHUD.hide(for: self.view, animated: true)
                }

            }

        }
//            Alamofire.request(url).responseJSON { (response) in
//                //print(response.result.value!)
//                self.articles = Article.initWith(serverResponse: response.result.value)
//                self.tableView.reloadData()
//
//                MBProgressHUD.hide(for: self.view, animated: true)
//            }
//        }
    }
}
