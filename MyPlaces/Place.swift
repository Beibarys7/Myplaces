//
//  Place.swift
//  MyPlaces
//
//  Created by Beibarys Shaggy on 04.06.2021.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let resNames = ["Bonsai","Burger Heroes","Kitchen","Love&Life","Morris Pub","Sherlock Holmes","Speak Easy","X.O"]

    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        for place in resNames {
            places.append(Place(name: place, location: "Almaty", type: "restourant", image: place))
        }
        return places
    }
}
