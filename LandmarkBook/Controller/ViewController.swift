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
        
    }
    
    
    
    
    
    
    
    
    // UITableView kullanmak istiyorsak bu iki fonksiyonu çalıştırmamız zorunlu. Ancak UITableViewDelegate ve UITableViewDataSource protokollerini eklemezsek bu fonksiyonlar çalışmaz.
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }


}

