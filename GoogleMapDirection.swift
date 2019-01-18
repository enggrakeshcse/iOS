   func showRouteOnMap(source: CLLocation, destination: CLLocation) {
        //MARK:- GoogleMap APi Need
          let origin = "\(source.coordinate.latitude),\(source.coordinate.longitude)"
         let destination = "\(destination.coordinate.latitude),\(destination.coordinate.longitude)"
         
         let url = "https://maps.googleapis.com/maps/api/directions/json?origin=\(origin)&destination=\(destination)&mode=driving&key=AIzaBcDeFgHiJkLmNoPqRsTuVwXyZ&callback=initialize"
         
         Alamofire.request(url).responseJSON { response in
         
         print(response.request as Any)  // original URL request
         print(response.response as Any) // HTTP URL response
         print(response.data as Any)     // server data
         print(response.result as Any)   // result of response serialization
         print(response)
         
         let json = JSON(data: response!)
         let routes = json["routes"].arrayValue
         
         for route in routes
         {
         let routeOverviewPolyline = route["overview_polyline"].dictionary
         let points = routeOverviewPolyline?["points"]?.stringValue
         let path = GMSPath.init(fromEncodedPath: points!)
         let polyline = GMSPolyline.init(path: path)
         polyline.strokeWidth = 4
         polyline.strokeColor = UIColor.red
         polyline.map = self.googlemap
         }
         
         }
 
    }
