//
//  SpaceShip.swift
//  TimeTravel
//
//  Created by Rama Milaneh on 10/4/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class SpaceShip {
    var name: String
    var speed: Speed = .none
    var currentPlanet: Planet
    var description: String {
        return "\(name) is headed to \(currentPlanet) and is traveling at \(speed)."
    }
    
    init(name: String, planet: Planet) {
        self.name = name
        self.currentPlanet = planet
        self.speed = planet.speed
    }
    
    func timeTravel() -> Bool {
        return self.speed.isTraveling
        
    }
    
    func isFaster(than spaceShip: SpaceShip) -> Bool {
       return self.speed.isFaster(than: spaceShip.speed)
    }
    
    func travel(to planet: Planet) -> Bool {
        if self.currentPlanet.rawValue == 1 {
            return false
        }else{
            
            if self.speed.rawValue == planet.speed.rawValue{
                self.currentPlanet = planet
                print(self.currentPlanet)
                return true
            }else{
                let planetArray: [Planet] = [Planet.mercury,Planet.earth, Planet.venus, Planet.jupiter, Planet.mars, Planet.neptune, Planet.saturn, Planet.uranus]
                
                for planet in planetArray {
                    if self.speed.rawValue == planet.speed.rawValue{
                        self.currentPlanet = planet
                        print(self.currentPlanet)
                        break
                    }
                }
                return false
            }
        }
    }
}
