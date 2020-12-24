//
//  PlaceModel.swift
//  TableViewApp
//
//  Created by Илья Гайворонский on 24.12.2020.
//

import Foundation

struct Place {
    
    var name: String
    var location: String
    var type: String
    var image: String
    
    static let names = [
        "Шаурмечная", "Кружка", "Макдак",
        "Второе дыхание", "Шашлычная №1"
     ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in names {
            places.append(Place(name: place, location: "Мск", type: "Кафе", image: place))
        }
        
        return places
    }
    
}
