//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Serhii Demianenko on 13.01.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
    
    let restaurantNames = [
           "Adelle", "ChinaHi", "Kuvshin", "KyivFoodMarket", "Lyubimy dyadya",
           "MilkBar", "Napule", "ThailandHi", "Veranda On The River", "VietnamHi"
       ]
    
    func savePlaces() {
        
        for place in restaurantNames {
            
            let image = UIImage(named: place)
            guard let imageData = image?.pngData() else { return }
            
            let newPlace = Place()
            
            newPlace.name = place
            newPlace.location = "Kyiv"
            newPlace.type = "Restaurant"
            newPlace.imageData = imageData
            
            StorageManager.saveObject(newPlace)
            
        }
        
        
    }
}
