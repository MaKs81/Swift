//
//  Cat.swift
//  maks
//
//  Created by Xcode on 25/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import Foundation

class Cat: Animal{
    
    override class func doSound(){
        print("miao")
    }
    
    override func description() -> String {
        return "CAT " + super.description()
    }
    
}
