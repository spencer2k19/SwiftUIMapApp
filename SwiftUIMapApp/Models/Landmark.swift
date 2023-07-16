//
//  Landmark.swift
//  SwiftUIMapApp
//
//  Created by Loic HACHEME on 16/07/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable,Codable, Identifiable {
    var id:Int
    var name:String
    var park:String
    var state:String
    var city:String
    var description:String
    var isFavorite:Bool
    
     var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates:Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }
    
    struct Coordinates: Hashable, Codable {
        var latitude:Double
        var longitude:Double
    }
}


extension [Landmark] {
    func getLocations() -> [Location] {
       let locations =  self.map { landmark in
           Location(name: landmark.name, cityName: landmark.city, coordinates: landmark.locationCoordinate,
                    description: landmark.description, imageNames: [landmark.imageName], link: "")
        }
        return locations
    }
}


