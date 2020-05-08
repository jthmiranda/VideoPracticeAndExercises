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
    
    
    enum EndPoint {
        case randomImageFromAllDogCollection
        case randomImageForBreed(String)
        case listAllBreeds
        
        
        var url: URL {
            return URL(string: self.stringValue)!
        }
        
        var stringValue: String {
            switch self {
            case .randomImageFromAllDogCollection:
                return "https://dog.ceo/api/breeds/image/random"
            case .randomImageForBreed(let breed):
                return "https://dog.ceo/api/breed/\(breed)/images/random"
            case .listAllBreeds:
                return "https://dog.ceo/api/breeds/list/all"
            
            }
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
    
    class func requestRandomImage(breed: String, completionHandler: @escaping (DogImage?, Error?) -> Void) {
        let randomImageEndPoing = DogAPI.EndPoint.randomImageForBreed(breed).url
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
    
    class func requestBreedList(completionHandler: @escaping ([String], Error?) -> Void) {
        let fetchUrl = DogAPI.EndPoint.listAllBreeds.url
        let task = URLSession.shared.dataTask(with: fetchUrl) { (data, response, error) in
            guard let data = data else {
                completionHandler([], error)
                return
            }
            let decoder = JSONDecoder()
            let breedsResponse = try! decoder.decode(BreedsListResponse.self, from: data)
            let breeds = breedsResponse.message.keys.map( {$0} )
            completionHandler(breeds, nil)
        }
        task.resume()
    }
        
}
