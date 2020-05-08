//
//  ViewController.swift
//  Randogs
//
//  Created by Jonathan Miranda on 5/8/20.
//  Copyright © 2020 Jonathan Miranda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var imageView: UIImageView!
    
    var breeds: [String] = ["greyhound", "poodle"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.dataSource = self
        pickerView.delegate = self
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

extension ViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return breeds.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return breeds[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        DogAPI.requestRandomImage(breed: breeds[row], completionHandler: self.handleRandomImageResponse(dogImage:error:))
    }
    
}
