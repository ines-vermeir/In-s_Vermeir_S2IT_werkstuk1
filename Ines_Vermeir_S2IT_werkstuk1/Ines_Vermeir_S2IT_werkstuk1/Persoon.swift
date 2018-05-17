//
//  Persoon.swift
//  Ines_Vermeir_S2IT_werkstuk1
//
//  Created by VERMEIR Inès (s) on 17/05/2018.
//  Copyright © 2018 VERMEIR Inès (s). All rights reserved.
//

import UIKit

class Persoon: NSObject {

    var naam : String
    var voornaam : String
    var foto : UIImage
    var adres : Adres
    var gpsCo : String
    var telefoon : String
    
    init(naam : String, voornaam : String, foto : UIImage, adres : Adres, gpsCo : String, telefoon : String){
        self.naam = naam
        self.voornaam = voornaam
        self.foto = foto
        self.adres = adres
        self.gpsCo = gpsCo
        self.telefoon = telefoon
    }
}
