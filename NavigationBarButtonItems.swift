 public func addLeftBarButtonItem(items: [String]) {
        var leftBarButton = [UIBarButtonItem]()
        for item in items {
            let barButton : UIBarButtonItem
            if let image = UIImage(named: item)?.withRenderingMode(.automatic) {
                barButton = UIBarButtonItem(image: image, style: .plain, target: self, action: nil)
                leftBarButton.append(barButton)
            }
            else {
                barButton = UIBarButtonItem(title: item, style: .plain, target: self, action: nil)
                leftBarButton.append(barButton)
            }
        }
        navigationItem.leftBarButtonItems = leftBarButton
    }
    
    public func addRightBarButtonItem(items: [String]) {
        var rightBarButton = [UIBarButtonItem]()
        for item in items {
            let barButton : UIBarButtonItem
            if let image = UIImage(named: item)?.withRenderingMode(.alwaysTemplate) {
                barButton = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(addNewContact))
                rightBarButton.append(barButton)
            }
            else {
                barButton = UIBarButtonItem(title: item, style: .plain, target: self, action: #selector(editFavouriteContact))
                rightBarButton.append(barButton)
            }
        }
        navigationItem.rightBarButtonItems = rightBarButton
    }
