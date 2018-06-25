//
//  ViewController.swift
//  maks
//
//  Created by Xcode on 21/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var animal : Animal?
    //var animalff : Animal?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.animal = Animal(name: "Gatto", weight: 5, birth: Date())
        
        let a2 = Animal()
        
        //self.animal = nil
        
        print(self.animal?.description())
        print(a2.description())
        
        //self.animalff = self.animal
        //self.animal=a2
        
        
        if let a3 = Animal(name: nil, weight: nil, birth: nil)
        {
            //
        }else{
            print("NULLLLLLL")
        }
        
        let dog = Dog()
        let dog1 = Dog(name: "Dog1", weight: 13, birth: Date())
        
        var a: Animal? = dog1
        
        var arrayOfAnimals = [dog, a2]
        process(arr: arrayOfAnimals)
        
        
        
    }

    func process(arr:[Animal?]){
        
        print("--------\n")
        for a in arr{
            print(a?.description())
            if let dog = a as? Dog{
                
            }
        }
    }


}

