//
//  DetailsViewController.swift
//  LandmarkBook
//
//  Created by Büşra Özkan on 8.11.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var landmarkName: UILabel!
    @IBOutlet weak var landmarkImage: UIImageView!
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        landmarkName.text = selectedLandmarkName
        landmarkImage.image = selectedLandmarkImage
    }
    

    

}
