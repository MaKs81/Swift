//
//  Animal.swift
//  maks
//
//  Created by Xcode on 21/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import UIKit

typealias Kg = Double

typealias Animals =  [Animal?]

class Animal{
    
    private var name : String?
    private var weight : Kg?
    private var birth : Date?
    private var imageName : String?
    
    static var howMany = 0
    
    class func doSound(){
        print("not implemented")
    }
    
    init?(name: String?, weight: Kg?, birth: Date?, imageName: String?) {
        
        guard let name = name, let weight = weight else{
            return nil
        }
        
        self.name = name
        self.weight = weight
        self.imageName = imageName
        if let birth = birth{
            self.birth = birth
        }else{
            self.birth = Date()
        }
        self.birth = birth
        
        Animal.howMany+=1
    }
    
    convenience init() {
        self.init(name: "", weight: 0, birth: nil, imageName: nil)!
        //self.birth = Date()
    }
    
    deinit {
        if let name = self.name {
            print("Dying..." + name)
        }else{
            print("Dying...")
        }
        
        Animal.howMany-=1
    }
    
    func description() -> String {
        var s = ""
        if let name = name
        {
            s=name
        }else{
            s="no name"
        }
        if let weight = self.weight
        {
            s+=" \(weight)"
        }
        
        if let birth = self.birth
        {
            s+=" \(birth)"
        }
        
        return s
    }
    
    var image : UIImage? {
        get{
            if let imageName = self.imageName{
                let img = UIImage(named: imageName)
                return img
            }
            return nil
        }
    }
}
