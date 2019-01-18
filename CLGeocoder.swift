        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(searchBar.text!) { (places, error) in
            if places?.first != nil {
                self.destination = places?.first?.location
                self.showRouteOnMap(source: self.source, destination: self.destination!)
            } else {
                let alert = UIAlertController(title: nil, message: "Result Not Found", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
                self.present(alert, animated: true)
            }
        }
   //used to get address from location point     
   func getAddress(coordinate: CLLocationCoordinate2D) {
        let gmsCoder = CLGeocoder()
        gmsCoder.reverseGeocodeCoordinate(coordinate) { (placeMark, error) in
            print("\(String(describing: placeMark!.firstResult()!.lines!.description) )")
        }
    }
