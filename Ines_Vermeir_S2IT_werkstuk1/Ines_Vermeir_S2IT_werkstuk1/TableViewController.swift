//
//  TableViewController.swift
//  Ines_Vermeir_S2IT_werkstuk1
//
//  Created by VERMEIR Inès (s) on 17/05/2018.
//  Copyright © 2018 VERMEIR Inès (s). All rights reserved.
//

import UIKit
import MapKit

class TableViewController: UITableViewController {

    var personen = [Persoon]()
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Initialize Tab Bar Item
        tabBarItem = UITabBarItem(title: "Personen", image: UIImage(), tag: 0)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        let adres1 = Adres(straat: "Beursplein", huisnummer: "", postcode: "1000", gemeente: "Brussel")
        let location1 = CLLocationCoordinate2D(latitude: 50.848293, longitude: 4.349597)
        let persoon1 = Persoon(naam: "Willems", voornaam: "Cedric", foto: #imageLiteral(resourceName: "cedric"), adres: adres1, coordinate: location1, telefoon: "0498 76 54 32")
       
        let adres2 = Adres(straat: "Viooltjeslaan", huisnummer: "8", postcode: "17700", gemeente: "Liedekerke")
        let location2 = CLLocationCoordinate2D(latitude: 50.857902, longitude: 4.112711)
        let persoon2 = Persoon(naam: "Rooselears", voornaam: "Stijn", foto: #imageLiteral(resourceName: "Stijn"), adres: adres2, coordinate: location2, telefoon: "0423 45 87 10")
        
        let adres3 = Adres(straat: "Sint-Pietersnieuwstraat", huisnummer: "23", postcode: "9000", gemeente: "Gent")
        let location3 = CLLocationCoordinate2D(latitude: 51.047761, longitude: 3.727263)
        let persoon3 = Persoon(naam: "Kruf", voornaam: "Femke", foto: #imageLiteral(resourceName: "femke"), adres: adres3, coordinate: location3, telefoon: "0410 25 74 20")
        
        let adres4 = Adres(straat: "Groenplaats", huisnummer: "1", postcode: "2000", gemeente: "Antwerpen")
        let location4 = CLLocationCoordinate2D(latitude: 51.218580, longitude: 4.401450)
        let persoon4 = Persoon(naam: "Blancquaert", voornaam: "Robrecht", foto: #imageLiteral(resourceName: "Robrecht"), adres: adres4, coordinate: location4, telefoon: "0450 36 52 44")
        
        self.personen = [persoon1, persoon2, persoon3, persoon4]
        
        let secondTab = self.tabBarController?.viewControllers![1] as! ViewControllerMaps
        secondTab.personen = self.personen
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (personen.count)
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        cell.textLabel?.text = self.personen[indexPath.row].voornaam
        cell.detailTextLabel?.text = self.personen[indexPath.row].naam
        cell.imageView?.image = self.personen[indexPath.row].foto
        
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let nextVC = segue.destination as? ViewController
        {
            let indexPath = self.tableView.indexPathForSelectedRow!
            nextVC.persoon = self.personen[indexPath.row]
            
        }
        
       
    }
    

}
