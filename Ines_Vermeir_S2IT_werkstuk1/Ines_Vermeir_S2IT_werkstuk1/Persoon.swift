//
//  Persoon.swift
//  Ines_Vermeir_S2IT_werkstuk1
//
//  Created by VERMEIR Inès (s) on 17/05/2018.
//  Copyright © 2018 VERMEIR Inès (s). All rights reserved.
//

import UIKit
import Foundation
import MapKit

class Persoon: NSObject, MKAnnotation {

    var naam : String
    var voornaam : String
    var foto : UIImage
    var adres : Adres
    var coordinate: CLLocationCoordinate2D
    var telefoon : String
    
    init(naam : String, voornaam : String, foto : UIImage, adres : Adres, coordinate: CLLocationCoordinate2D, telefoon : String){
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.adres = adres
        self.coordinate = coordinate
        self.telefoon = telefoon
    }
}
