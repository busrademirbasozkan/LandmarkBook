//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Büşra Özkan on 8.11.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var chosenName = ""
    var chosenImage = UIImage()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Bu şekilde yazarak delegate ve datasource yetkisinide viewcontrollera vermiş oluyoruz.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("Brandenburg Tor")
        landmarkNames.append("Kız Kulesi")
        landmarkNames.append("Buckingham Palace")
        landmarkNames.append("Empire State")
        
        landmarkImages.append(UIImage(named: "colosseumroma")!)
        landmarkImages.append(UIImage(named: "brandenburgtorberlin")!)
        landmarkImages.append(UIImage(named: "kızkulesiistanbul")!)
        landmarkImages.append(UIImage(named: "buckhingamlondon")!)
        landmarkImages.append(UIImage(named: "empirestatenewyork")!)
        
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenName = landmarkNames[indexPath.row]
        chosenImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedLandmarkName = chosenName
            destinationVC.selectedLandmarkImage = chosenImage
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.landmarkNames.remove(at: indexPath.row)
            self.landmarkImages.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .right)
        }
    }
    
    
    
    // UITableView kullanmak istiyorsak bu iki fonksiyonu çalıştırmamız zorunlu. Ancak UITableViewDelegate ve UITableViewDataSource protokollerini eklemezsek bu fonksiyonlar çalışmaz.
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //eski yöntem (cell.textLabel?.text = "test")
        //bu çalışmazsa yazılması gereken kod
        var content = cell.defaultContentConfiguration()
        content.text = landmarkNames[indexPath.row]
        //content.secondaryText = "farklı formatlar"
        cell.contentConfiguration = content
        return cell
    }


}

