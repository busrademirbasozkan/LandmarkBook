//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Büşra Özkan on 8.11.2022.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Bu şekilde yazarak delegate ve datasource yetkisinide viewcontrollera vermiş oluyoruz.
        tableView.delegate = self
        tableView.dataSource = self
        
        
        var landmarkNames = [String]()
        landmarkNames.append("Colosseum")
        landmarkNames.append("Brandenburg Tor")
        landmarkNames.append("Kız Kulesi")
        landmarkNames.append("Buckhingham Palace")
        landmarkNames.append("Empire State")
        
        var landmarkImages = [UIImage]()
        landmarkImages.append(UIImage(named: "colosseumroma")!)
        landmarkImages.append(UIImage(named: "brandenburgtorberlin")!)
        landmarkImages.append(UIImage(named: "kızkulesiistanbul")!)
        landmarkImages.append(UIImage(named: "buckhingamlondon")!)
        landmarkImages.append(UIImage(named: "empirestatenewyork")!)
        
        
    }
    
    
    
    
    
    
    
    
    // UITableView kullanmak istiyorsak bu iki fonksiyonu çalıştırmamız zorunlu. Ancak UITableViewDelegate ve UITableViewDataSource protokollerini eklemezsek bu fonksiyonlar çalışmaz.
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        //eski yöntem (cell.textLabel?.text = "test")
        //bu çalışmazsa yazılması gereken kod
        var content = cell.defaultContentConfiguration()
        content.text = "Test"
        //content.secondaryText = "farklı formatlar"
        cell.contentConfiguration = content
        return cell
    }


}

