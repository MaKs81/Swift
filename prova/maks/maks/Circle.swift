//
//  Circle.swift
//  maks
//
//  Created by Xcode on 25/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import Foundation

let π = Double.pi

class Circle: Shape {
    
    private var raggio : Double?
    
    override func Perimetro() -> Double? {
        guard let raggio = raggio else{
            return nil
        }
        
        return 2 * π * raggio
    }
    
    override func Area() -> Double? {
        guard let raggio = raggio else{
            return nil
        }
        
        return π * raggio * raggio
        
    }    
    
    init?(raggio: Double?) {
        super.init()
        if set(raggio: raggio) == false{
            return nil
        }
        
        self.raggio = raggio
    }
    
    func set(raggio: Double?)->Bool{
        guard let raggio=raggio, raggio > 0 else
        {
            self.raggio = nil
            return false
        }
        self.raggio = raggio
        return true
    }
    
    override func description() -> String {
        return super.description() + " Circle"
    }
    
}
