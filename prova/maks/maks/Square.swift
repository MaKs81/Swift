//
//  Square.swift
//  maks
//
//  Created by Xcode on 25/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import Foundation

class Square: Shape{
    
    private var lato : Double?
    
    override func Perimetro() -> Double?{
        if let lato = lato{
            return lato * 4
        }
        else{
            return 0
        }
    }
    
    override func Area() -> Double?{
        if let lato = lato{
            return lato * lato
        }else{
            return 0
        }
    }
    
    init?(lato: Double?) {
        guard let lato = lato else{
            return nil
        }
        
        self.lato = lato
                
    }
    
    override func description() -> String {
        return super.description() + " Square"
    }
    
}
