//
//  ViewController.swift
//  Ines_Vermeir_S2IT_werkstuk1
//
//  Created by VERMEIR Inès (s) on 17/05/2018.
//  Copyright © 2018 VERMEIR Inès (s). All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    var persoon : Persoon?
    
    @IBOutlet weak var naam: UILabel!
    @IBOutlet weak var foto: UIImageView!
    @IBOutlet weak var gemeente: UILabel!
    @IBOutlet weak var postcode: UILabel!
    @IBOutlet weak var nummer: UILabel!
    @IBOutlet weak var straat: UILabel!
    @IBOutlet weak var telefoon: UILabel!
    @IBOutlet weak var voornaam: UILabel!
    
    @IBOutlet weak var mapview: MKMapView!
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        self.naam.text = persoon?.naam
        self.foto.image = persoon?.foto
        self.gemeente.text = persoon?.adres.gemeente
        self.postcode.text = persoon?.adres.postcode
        self.nummer.text = persoon?.adres.huisnummer
        self.straat.text = persoon?.adres.straat
        self.telefoon.text = persoon?.telefoon
        self.voornaam.text = persoon?.voornaam
        
        self.mapview.addAnnotation(persoon?.coordinate as! MKAnnotation)
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
  /* private func mapView(_ mapView: MKMapView, didUpdate userLocation: MKAnnotationView) {
        let center = CLLocationCoordinate2D(latitude: (persoon?.gpsCoLat)!, longitude: (persoon?.gpsCoLong)!)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
         mapView.setRegion(region, animated: true)
    }
*/
}

