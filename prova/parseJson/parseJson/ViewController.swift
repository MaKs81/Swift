//
//  ViewController.swift
//  parseJson
//
//  Created by Xcode on 26/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import UIKit
typealias Dict = [String : Any]
typealias Async = (Data?, URLResponse?, Error?) -> Swift.Void

class ViewController: UIViewController, URLSessionDelegate {
    
    var addresses: [Address]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //ParseJSON()
        StartDownloading(urlString: "https://maps.googleapis.com/maps/api/geocode/json?address=via+cadolini&sensor=true")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    private final func ParseJSON(){
        guard let filePath = Bundle.main.path(forResource: "google", ofType: "json") else {
            return
        }
        //print(filePath)
        let url = URL(fileURLWithPath: filePath)
        
        guard let data = try?Data(contentsOf: url) else{
            return
        }
        
        parse(data: data)
    }
    
    private final func StartDownloading(urlString: String){
        guard let url = URL(string: urlString) else{
            return
        }
        let session = URLSession.shared
        
        let async : Async = { (data: Data?, response: URLResponse?, err: Error?) in
            if err == nil, let data = data{
                self.parse(data: data)
            }
        }
        
        let task = session.dataTask(with: url, completionHandler: async)
        
        task.resume()
    }
    
    
    private final func parse(data: Data){
        guard let dict = try? JSONSerialization.jsonObject(with: data, options: []) as? Dict else{
            return
        }
        guard let d = dict else{
            return
        }
        guard let results = d["results"] as? [Dict] else{
            return
        }
        
        self.addresses = [Address]()
        
        for addressDict in results{
            print(addressDict)
            if let address = Address(dict: addressDict){
                self.addresses?.append(address)
            }
        }
    }

}

