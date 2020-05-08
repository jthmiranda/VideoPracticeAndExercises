//
//  ViewController.swift
//  Randogs
//
//  Created by Jonathan Miranda on 5/8/20.
//  Copyright © 2020 Jonathan Miranda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DogAPI.requestRandomImage(completionHandler: self.handleRandomImageResponse(dogImage:error:))
    }

    
    func handleRandomImageResponse(dogImage: DogImage?, error: Error?) {
        if let dogImage = dogImage {
            guard let imageUrl = URL(string: dogImage.message) else {
                return
            }
            DogAPI.requestImageFile(url: imageUrl, completionHandler: self.handleImageFileResponse(image:error:))
        }
    }

    func handleImageFileResponse(image: UIImage?, error: Error?) {
        DispatchQueue.main.async {
            self.imageView.image = image
        }
    }
    
}

