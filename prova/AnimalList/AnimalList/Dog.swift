//
//  Dog.swift
//  maks
//
//  Created by Xcode on 25/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import Foundation

class Dog: Animal{
    
    override class func doSound(){
        print("bau")
    }
    
    override func description() -> String {
        return "DOG " + super.description()
    }
    
}
