extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        textLabel.text = "\(alphabet[indexPath.row]) = \(indexPath.row + 1)"
        //textLabel.text = " \(indexPath.row + 1)"
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 40, height: 60)
    }
    
}
extension CollectionViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return alphabet.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.idetifier, for: indexPath) as! CollectionViewCell
            //cell.config(image: images[indexPath.row])
            cell.config(text: alphabet[indexPath.row])
            return cell
            //return UICollectionViewCell()
    }
}
