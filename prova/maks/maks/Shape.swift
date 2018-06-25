//
//  Shape.swift
//  maks
//
//  Created by Xcode on 25/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import Foundation

class Shape {
    
    private var lato : Double?
    private var raggio : Double?
    
    func Area() -> Double?{
        return nil
    }
    
    func Perimetro() -> Double?{
        return nil
    }
    
    func description() -> String {
        var s = ""
        if let lato = self.lato
        {
            s+=" \(lato)"
        }
        if let raggio = self.raggio
        {
            s+=" \(raggio)"
        }
        
        return s
    }
    
}
