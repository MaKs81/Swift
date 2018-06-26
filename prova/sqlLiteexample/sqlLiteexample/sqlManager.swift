//
//  sqlManager.swift
//  sqlLiteexample
//
//  Created by Xcode on 26/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import Foundation

class SQLManager{
    let dbName = "foods.db"
    static let shared = SQLManager()
    
    
    func openDB(){
        var path = Bundle.main.resourcePath! + "/" + dbName
        
        var db: OpaquePointer?
        
        let rc = sqlite3_open(path, &db)
        
        if rc != 0 {
            return
        }
        
        
        let query = "INSERT INTO FOODS VALUES (106,'toporagno',30)"
        
        //let prepare
        
        let rc2 = sqlite3_exec(db, query, nil, nil, nil)
        
    }
    
}
