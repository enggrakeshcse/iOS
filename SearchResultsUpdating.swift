extension ContactViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        let searchText = searchController.searchBar.text ?? ""
        var predicate: NSPredicate?
        if searchText.count > 0 {
            predicate = NSPredicate(format: "(firstName contains[cd] %@)", searchText)
        } else {
            predicate = nil
        }
        AddressBook.fetchedResultsController.fetchRequest.predicate = predicate
        do {
            try AddressBook.fetchedResultsController.performFetch()
            tableView.reloadData()
        } catch {
            print(Error.self)
        }
    }
    
    func searchBarIsEmpty() -> Bool {
        return searchController.searchBar.text?.isEmpty ?? true
    }
}
