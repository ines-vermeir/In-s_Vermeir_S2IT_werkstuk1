//
//  Adres.swift
//  Ines_Vermeir_S2IT_werkstuk1
//
//  Created by VERMEIR Inès (s) on 17/05/2018.
//  Copyright © 2018 VERMEIR Inès (s). All rights reserved.
//

import UIKit

class Adres: NSObject {

    var straat : String
    var huisnummer : String
    var postcode : Int
    var gemeente : String
    
    init(straat : String,huisnummer : String, postcode : Int,gemeente : String ){
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
    }
}
