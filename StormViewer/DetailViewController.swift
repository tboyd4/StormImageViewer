//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Tyler Boyd on 5/27/21.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    
    var selectedImage: String?
    var currentImageNumber: Int?
    var totalImageNumber: Int?
    var titleToUse: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
        
        if let thisImageNumber = currentImageNumber {
            if let totalNumberOfImages = totalImageNumber {
                titleToUse = "Image \(thisImageNumber) of \(totalNumberOfImages)"
            }
        }
        
        if let theTitleToUse = titleToUse {
            title = theTitleToUse
        } else {
            title = selectedImage
        }
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.hidesBarsOnTap = true
//    }
//
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.hidesBarsOnTap = false
//    }

}
