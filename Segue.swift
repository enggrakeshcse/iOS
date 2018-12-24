@IBAction func rollAction(_ sender: Any) {
        performSegue(withIdentifier: "rollDices", sender: self)
 }
 override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "rollDices"{
            let Controller = segue.destination as! SecondViewController
            Controller.first = self.randomNumber()
            Controller.second = self.randomNumber()
        }
    }
