//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Serhii Demianenko on 13.01.2020.
//  Copyright © 2020 Serhii Demianenko. All rights reserved.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let restaurantNames = [
           "Adelle", "ChinaHi", "Kuvshin", "KyivFoodMarket", "Lyubimy dyadya",
           "MilkBar", "Napule", "ThailandHi", "Veranda On The River", "VietnamHi"
       ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        for place in restaurantNames {
            places.append(Place(name: place, location: "Kyiv", type: "Restaurant", image: place))
        }
        
        return places
        
    }
}
