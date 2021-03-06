//
//  AnimalTableViewController.swift
//  AnimalList
//
//  Created by Xcode on 25/06/18.
//  Copyright © 2018 mm. All rights reserved.
//

import UIKit

class AnimalTableViewController: UITableViewController {

    private let IMAGE_TAG = 1000
    var zoo: [Animals]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.zoo = [
        [
            Dog(name: "fido", weight: 12, birth: nil, imageName: "1"),
            Dog(name: "fido1", weight: 13, birth: nil, imageName: nil),
            Dog(name: "fido2", weight: 12, birth: nil, imageName: "2"),
            Dog(name: "fido3", weight: 12, birth: nil, imageName: "3"),
            Dog(name: "fido1", weight: 13, birth: nil, imageName: nil),
            Dog(name: "fido2", weight: 12, birth: nil, imageName: "2"),
            Dog(name: "fido3", weight: 12, birth: nil, imageName: "3"),
            Dog(name: "fido1", weight: 13, birth: nil, imageName: nil),
            Dog(name: "fido2", weight: 12, birth: nil, imageName: "2"),
            Dog(name: "fido3", weight: 12, birth: nil, imageName: "3"),
            Dog(name: "fido1", weight: 13, birth: nil, imageName: nil),
            Dog(name: "fido2", weight: 12, birth: nil, imageName: "2"),
            Dog(name: "fido3", weight: 12, birth: nil, imageName: "3"),
            Dog(name: "fido1", weight: 13, birth: nil, imageName: nil),
            Dog(name: "fido2", weight: 12, birth: nil, imageName: "2"),
            Dog(name: "fido3", weight: 12, birth: nil, imageName: "3"),
            Dog(name: "fido1", weight: 13, birth: nil, imageName: nil),
            Dog(name: "fido2", weight: 12, birth: nil, imageName: "2"),
            Dog(name: "fido3", weight: 12, birth: nil, imageName: "3"),
            Dog(name: "fido1", weight: 13, birth: nil, imageName: nil),
            Dog(name: "fido2", weight: 12, birth: nil, imageName: "2"),
            Dog(name: "fido3", weight: 12, birth: nil, imageName: "3"),
            Dog(name: "fido1", weight: 13, birth: nil, imageName: nil),
            Dog(name: "fido2", weight: 12, birth: nil, imageName: "2"),
            Dog(name: "fido3", weight: 12, birth: nil, imageName: "3"),
            Dog(name: "fido1", weight: 13, birth: nil, imageName: nil),
            Dog(name: "fido2", weight: 12, birth: nil, imageName: "2"),
            Dog(name: "fido3", weight: 12, birth: nil, imageName: "3")
            ],
        [
            Cat(name: "ugo", weight: 4, birth: nil, imageName: "5"),
            Cat(name: "ugo1", weight: 5, birth: nil, imageName: "6"),
            Cat(name: "felix", weight: 6, birth: nil, imageName: "7"),
            Cat(name: "satana", weight: 5.4, birth: nil, imageName: "5"),
            Cat(name: "ugo1", weight: 5, birth: nil, imageName: "6"),
            Cat(name: "felix", weight: 6, birth: nil, imageName: "7"),
            Cat(name: "satana", weight: 5.4, birth: nil, imageName: "5"),
            Cat(name: "ugo1", weight: 5, birth: nil, imageName: "6"),
            Cat(name: "felix", weight: 6, birth: nil, imageName: "7"),
            Cat(name: "satana", weight: 5.4, birth: nil, imageName: "5"),
            Cat(name: "ugo1", weight: 5, birth: nil, imageName: "6"),
            Cat(name: "felix", weight: 6, birth: nil, imageName: "7"),
            Cat(name: "satana", weight: 5.4, birth: nil, imageName: "5"),
            Cat(name: "ugo1", weight: 5, birth: nil, imageName: "6"),
            Cat(name: "felix", weight: 6, birth: nil, imageName: "7"),
            Cat(name: "satana", weight: 5.4, birth: nil, imageName: "5"),
            Cat(name: "ugo1", weight: 5, birth: nil, imageName: "6"),
            Cat(name: "felix", weight: 6, birth: nil, imageName: "7"),
            Cat(name: "satana", weight: 5.4, birth: nil, imageName: "5"),
            Cat(name: "ugo1", weight: 5, birth: nil, imageName: "6"),
            Cat(name: "felix", weight: 6, birth: nil, imageName: "7"),
            Cat(name: "satana", weight: 5.4, birth: nil, imageName: "5"),
            Cat(name: "ugo1", weight: 5, birth: nil, imageName: "6"),
            Cat(name: "felix", weight: 6, birth: nil, imageName: "7"),
            Cat(name: "satana", weight: 5.4, birth: nil, imageName: "5"),
            Cat(name: "ugo1", weight: 5, birth: nil, imageName: "6"),
            Cat(name: "felix", weight: 6, birth: nil, imageName: "7"),
            Cat(name: "satana", weight: 5.4, birth: nil, imageName: "5"),
            Cat(name: "ugo1", weight: 5, birth: nil, imageName: "6"),
            Cat(name: "felix", weight: 6, birth: nil, imageName: "7"),
            Cat(name: "satana", weight: 5.4, birth: nil, imageName: "5")
            ]
        ]
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "Dogs"
        }
        return "Cats"
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if let zoo = self.zoo{
            return zoo.count
        }
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let zoo = self.zoo else{
            return 0
        }
        
        let animals = zoo[section]
        return animals.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AnimalCellID", for: indexPath)

        // Configure the cell...
        guard let zoo = self.zoo else{
            return cell
        }
        
        let section = indexPath.section
        let row = indexPath.row
        
        let animals = zoo[section]
        let animal = animals[row]
        
        cell.textLabel?.text = animal?.description()
        
        cell.backgroundColor = row % 2 > 0 ? UIColor.lightGray : UIColor.white
        
        //cell.imageView?.image = animal?.image
        
        
        var imageView : UIImageView?
        if let subView = cell.viewWithTag(IMAGE_TAG) as? UIImageView{
            imageView = subView
        }else{
            let frame = CGRect(x: 300, y: 20, width: 50, height: 50)
            imageView = UIImageView(frame: frame)
            cell.addSubview(imageView!)
            imageView?.tag = IMAGE_TAG
        }
        
        imageView?.image = animal?.image
        
        
        
        /*
        let frame = CGRect(x: 300, y: 20, width: 50, height: 50)
        let iumageView = UIImageView(frame: frame)
        iumageView.image = animal?.image
        cell.addSubview(iumageView)
        */
        
        
        
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
