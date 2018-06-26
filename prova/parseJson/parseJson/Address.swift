//
//  Address.swift
//  parseJson
//
//  Created by Xcode on 26/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import Foundation

class Address{
    var formattedAddress: String?
    var geometry: Dict?
    var place_id: String?
    
    
    init?(dict: Dict?){
        guard let dict = dict else{
            return nil
        }
        
        if let geometry = dict["geometry"] as? Dict{
            self.geometry = geometry
        }
        
        if let formatted_address = dict["formatted_address"] as? String{
            self.formattedAddress = formatted_address
        }
        
        if let place_id = dict["place_id"] as? String{
            self.place_id = place_id
        }
    }
    
}
