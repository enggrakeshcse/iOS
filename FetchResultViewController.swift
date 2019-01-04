  static  var tempFetchedResultController: NSFetchedResultsController<EntityName>?
    static  var fetchedResultsController: NSFetchedResultsController<EntityName> {
        if let fetchedResultController = tempFetchedResultController {
            return fetchedResultController
        }
        let fetchRequest: NSFetchRequest<EntityName> = EntityName.fetchRequest()
        let nameSortDescriptor = NSSortDescriptor(key: "attributesName", ascending: true)
        fetchRequest.sortDescriptors = [nameSortDescriptor]
        let fetchResultsController = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: CoreDataBase.shared.context, sectionNameKeyPath: "firstCharact", cacheName: nil)
        tempFetchedResultController = fetchResultsController
        return fetchResultsController
    }
