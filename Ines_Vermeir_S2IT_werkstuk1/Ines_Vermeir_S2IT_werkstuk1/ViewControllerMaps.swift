//
//  ViewControllerMaps.swift
//  Ines_Vermeir_S2IT_werkstuk1
//
//  Created by VERMEIR Inès (s) on 31/05/2018.
//  Copyright © 2018 VERMEIR Inès (s). All rights reserved.
//

import UIKit
import MapKit

class ViewControllerMaps: UIViewController,MKMapViewDelegate, CLLocationManagerDelegate{
    
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        locationManager.requestAlwaysAuthorization()
        
        locationManager.startUpdatingLocation()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
