import UIKit
import PlaygroundSupport
import MapKit

class MapViewController:UIViewController {
    let brandi = CLLocationCoordinate2DMake(40.836724, 14.2468766)
    let mapView = MKMapView()
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.frame = view.frame
        view.addSubview(mapView)
        mapView.mapType = .satelliteFlyover
        let camera = MKMapCamera(lookingAtCenter: brandi, fromDistance: 50, pitch: 30, heading: 262)
        mapView.camera = camera
        let annotation = MKPointAnnotation()
        annotation.coordinate = brandi
        mapView.addAnnotation(annotation)
    }
}
PlaygroundPage.current.liveView = MapViewController()




