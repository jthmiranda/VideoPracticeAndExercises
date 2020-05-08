//
//  DogAPI.swift
//  Randogs
//
//  Created by Jonathan Miranda on 5/8/20.
//  Copyright © 2020 Jonathan Miranda. All rights reserved.
//

import Foundation
import UIKit

class DogAPI {
    
    
    enum EndPoint: String {
        case randomImageFromAllDogCollection = "https://dog.ceo/api/breeds/image/random"
        
        var url: URL {
            return URL(string: self.rawValue)!
        }
    }
    
    class func requestImageFile(url: URL, completionHandler: @escaping (UIImage?, Error?) -> Void) {
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                completionHandler(nil, error)
                return
            }
            let downloadedImage = UIImage(data: data)
            completionHandler(downloadedImage, nil)
        }
        task.resume()
    }
    
    class func requestRandomImage(completionHandler: @escaping (DogImage?, Error?) -> Void) {
        let randomImageEndPoing = DogAPI.EndPoint.randomImageFromAllDogCollection.url
        let task = URLSession.shared.dataTask(with: randomImageEndPoing) { (data, response, error) in
            guard let data = data else {
                completionHandler(nil, error)
                return
            }
            let decoder = JSONDecoder()
            let imageData = try! decoder.decode(DogImage.self, from: data)
            
            completionHandler(imageData, nil)
        }
        task.resume()
    }
}
