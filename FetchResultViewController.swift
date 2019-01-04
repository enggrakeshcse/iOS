  static  var tempFetchedResultController: NSFetchedResultsController<Contact>?
    static  var fetchedResultsController: NSFetchedResultsController<Contact> {
        if let fetchedResultController = tempFetchedResultController {
            return fetchedResultController
        }
        let fetchRequest: NSFetchRequest<Contact> = Contact.fetchRequest()
        let nameSortDescriptor = NSSortDescriptor(key: "firstName", ascending: true)
        fetchRequest.sortDescriptors = [nameSortDescriptor]
        let fetchResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: CoreDataBase.shared.context, sectionNameKeyPath: "firstCharact", cacheName: nil)
        tempFetchedResultController = fetchResultsController
        return fetchResultsController
    }
