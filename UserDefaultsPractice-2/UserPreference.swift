//
//  UserPreference.swift
//  UserDefaultsPractice-2
//
//  Created by David Lin on 1/20/20.
//  Copyright © 2020 David Lin (Passion Proj). All rights reserved.
//

import Foundation

enum UnitMeasurement: String {
    case miles = "Miles"
    case kilometers = "Kilometers"
}

struct UserPreferenceKey {
    static let unitMeasurement = "Unit Measurement"
    
}




class UserPreference {
    
    // a Singleton's initializer NEEDS to be private - this ensures that ONLY one instance of this class is used throughout the application
    private init() {}
    
    static let shared = UserPreference()
    
    
    // set a user defaults value (object)
    func updateUnitMeasurement(with unit: UnitMeasurement) {
        //storing or persisting the unit measurement value to UserDefaults (device or simular as permanent storage)
        
        
        //UserDefaults.standard is a Singleton in iOS that gives us access to saving and retrieving stored data in the device or simulator
        UserDefaults.standard.set(unit.rawValue, forKey: UserPreferenceKey.unitMeasurement )
        
        // key is "Unit Measurement"
        // value is either "Miles" or "Kilometers"
        // UserDefaults: [Key: Value] like a Dictonary
        // UserDefaults: ["Unit Measurement" : "Miles"]
        
        
    }
    
    // retrieve a user defaults value (object)
    func getUnitMeasurement() -> UnitMeasurement? {
        if let unitMeasurement = UserDefaults.standard.object(forKey: UserPreferenceKey.unitMeasurement) {
            
        }
    }
    
}




