
extension ViewController : UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        state = datasSource[country[pickerView.selectedRow(inComponent: 0)]]!
        stateName = Array(state.keys)
        //public subscript(key: Dictionary.Key, default defaultValue: @autoclosure () -> Dictionary.Value) -> Dictionary.Value
        if component == 0 {
            return country.count
        }
        if component == 1 {
            return stateName.count
        }
        if component == 2 {
            return (state[stateName[pickerView.selectedRow(inComponent: 1)]]?.count)!
        }
        return 0
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return country[row]
        }
        if component == 1 {
            return stateName[row]
        }
        if component == 2 {
            cityName = Array(state[stateName[pickerView.selectedRow(inComponent: 1)]]!)
            return cityName[row]
        }
        return ""
    }
    
    //MARK:- PickerView Delegates Used

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        // pickerView.reloadComponent(1)
        if component == 0 {
            switch row{
            case 0: do {
                pickerView.reloadComponent(1)
                pickerView.reloadComponent(2)
                }
            case 1: do {
                pickerView.reloadComponent(1)
                pickerView.reloadComponent(2)
                }
            case 2: do{
                pickerView.reloadComponent(1)
                pickerView.reloadComponent(2)
                }
            default:
                break
            }
        }
        if component == 1 {
            switch row{
            case 0: do {
                pickerView.reloadComponent(2)
                }
            case 1: do {
                pickerView.reloadComponent(2)
                }
            case 2: do{
                pickerView.reloadComponent(2)
                }
            case 3: do{
                pickerView.reloadComponent(2)
                }
            default:
                break
            }
        }
    }
}

