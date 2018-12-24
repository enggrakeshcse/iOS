extension ScrollViewController: UIScrollViewDelegate {

    func scrollViewDidZoom(_ scrollView: UIScrollView) {
        let subView = scrollView.subviews[0]
        let offSetX = max((scrollView.bounds.size.width - scrollView.contentSize.width)*0.5, 0.0)
        let offSetY = max((scrollView.bounds.size.height - scrollView.contentSize.height)*0.5, 0.0)

        subView.center = CGPoint(x: scrollView.contentSize.width*0.5 + offSetX, y: scrollView.contentSize.height*0.5 + offSetY)
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
      return imageView
    }
}
