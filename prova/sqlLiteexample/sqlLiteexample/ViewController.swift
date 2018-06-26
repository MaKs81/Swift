//
//  ViewController.swift
//  sqlLiteexample
//
//  Created by Xcode on 26/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        SQLManager.shared.openDB()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

