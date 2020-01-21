//
//  SettingsViewController.swift
//  UserDefaultsPractice-2
//
//  Created by David Lin on 1/20/20.
//  Copyright © 2020 David Lin (Passion Proj). All rights reserved.
//

import UIKit

enum UnitMeasurement: String {
    case miles = "Miles"
    case kilometers = "Kilometers"
}


class SettingsViewController: UITableViewController {
    @IBOutlet weak var unitMeasurementLabel: UILabel!
    
    var currentUnit = UnitMeasurement.miles {
        didSet {
          // update the unitMeasurement label
            unitMeasurementLabel.text = currentUnit.rawValue // "Miles" or "Kilometers"
            
            
          // update value in user defaults
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // toggle between "Miles" or "Kilometers"
        
        switch indexPath.row {
        case 0:
            // toggle unit measurement label
            toggleUnitMeasurement()
        default:
            break
        }
    }
    
    
    private func toggleUnitMeasurement() {
        currentUnit = (currentUnit == UnitMeasurement.miles)
            ? UnitMeasurement.kilometers: UnitMeasurement.miles
    }
    
    
}
