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
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
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

