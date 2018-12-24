override func viewDidLoad() {
        super.viewDidLoad()
NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), 
name: NSNotification.Name.UIKeyboardWillShow, object: nil)

NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), 
name: NSNotification.Name.UIKeyboardWillHide, object: nil)
}
  @objc func  keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            //print("notification: Keyboard will show")
            let insets : UIEdgeInsets = UIEdgeInsetsMake(0, 0, keyboardSize.height, 0)
            contactTableView.contentInset = insets
            contactTableView.scrollIndicatorInsets = insets
        }
    }
    @objc func keyboardWillHide(notification: Notification) {
        let insets : UIEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
        contactTableView.contentInset = insets
        contactTableView.scrollIndicatorInsets = insets
    }
