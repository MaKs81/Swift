//
//  Animal.swift
//  maks
//
//  Created by Xcode on 21/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import Foundation

typealias Kg = Double


class Animal{
    
    private var name : String?
    private var weight : Kg?
    private var birth : Date?
    
    static var howMany = 0
    
    class func doSound(){
        print("not implemented")
    }
    
    init?(name: String?, weight: Kg?, birth: Date?) {
        
        guard let name = name, let weight = weight else{
            return nil
        }
        
        self.name = name
        self.weight = weight
        if let birth = birth{
            self.birth = birth
        }else{
            self.birth = Date()
        }
        self.birth = birth
        
        Animal.howMany+=1
    }
    
    convenience init() {
        self.init(name: "", weight: 0, birth: nil)!
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
    
}
