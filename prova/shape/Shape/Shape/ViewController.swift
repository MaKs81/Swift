//
//  ViewController.swift
//  Shape
//
//  Created by Xcode on 25/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var radiusTxt: UITextField!
    @IBOutlet weak var resultTxt: UILabel!
    
    
     let INITIAL_VALUE = 1.0
    var square : Square?
    var circle : Circle?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.circle = Circle(raggio: INITIAL_VALUE)
        self.radiusTxt.text = "\(INITIAL_VALUE)"
        
        if let area = self.circle?.Area(){
            self.resultTxt.text = "\(area)"
        }else{
            self.resultTxt.text = "???"
        }
        
        /*let square = Square(lato: 1.3)
        print(square?.Area())
        print(square?.Perimetro())
        print(square?.description())
        
        let circle = Circle(raggio: 2.7)
        print(circle?.Area())
        print(circle?.Perimetro())*/
        
        
    }
    @IBAction func calc(_ sender: UIButton) {
        
        self.view.endEditing(true)
        guard let txt = self.radiusTxt.text else{
            return
        }
        
        guard let n = Double(txt) else {
            return
        }
        
        self.circle?.set(raggio: n)
                
        if let area = self.circle?.Area(){
            self.resultTxt.text = "\(area)"
        }else{
            self.resultTxt.text = "???"
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

