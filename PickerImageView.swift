 @IBAction func pickerImageActionCam(_ sender: Any) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .camera
        imagePickerController.allowsEditing = true
        imagePickerController.delegate = self
        present(imagePickerController, animated: true, completion: nil)
    }
    @IBAction func pickerImageAction(_ sender: Any) {
        let imagepickerController = UIImagePickerController()
        imagepickerController.sourceType = .photoLibrary
        imagepickerController.delegate = self
 
        present(imagepickerController, animated: true, completion: nil)

    }
}

extension ViewController: UIImagePickerControllerDelegate,
UINavigationControllerDelegate{
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage
        {
            pickerImage.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}
