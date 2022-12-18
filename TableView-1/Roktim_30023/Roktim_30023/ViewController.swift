//
//  ViewController.swift
//  Roktim_30023
//
//  Created by Bjit on 5/12/22.
//

import UIKit
//var indicator = 0
//var section = 0
struct Pet
{
    let PetName : String
    let imgid : String
}
struct Player
{
    let PlayerName : String
    let imgid : String
}
struct Vehicle
{
    let VehicleName : String
    let imgid : String
}
struct Item
{
    let ItemName : String
    let ItemId : String
}
extension Item
{
    static let items = [Item(ItemName: "mouse", ItemId: "Reza Md. Ruhul Roktim Reza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul Roktim"), Item(ItemName: "keyboard", ItemId: "keyboard"), Item(ItemName: "pc", ItemId: "pc"), Item(ItemName: "phone", ItemId: "phone"), Item(ItemName: "headphone", ItemId: "headphone")]
}
extension Vehicle
{
    static let vehicles = [Vehicle(VehicleName: "car", imgid: "car"), Vehicle(VehicleName: "bike", imgid: "bike"), Vehicle(VehicleName: "cycle", imgid: "cycle"), Vehicle(VehicleName: "train", imgid: "train"), Vehicle(VehicleName: "bus", imgid: "bus")]
}
extension Player
{
    static let players = [Player(PlayerName: "neymar", imgid: "neymar"), Player(PlayerName: "recharlison", imgid: "recharlison"), Player(PlayerName: "vinicius", imgid: "vinicius"),Player(PlayerName: "kaka", imgid: "kaka"), Player(PlayerName: "messi", imgid: "messi")]
}
extension Pet
{
    static let pets = [Pet(PetName: "cat", imgid: "cat"), Pet(PetName: "dog", imgid: "dog"), Pet(PetName: "parrot", imgid: "parrot"), Pet(PetName: "rabbit", imgid: "rabbit"), Pet(PetName: "liger", imgid: "liger")]
}





class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //let pets = ["cat", "dog", "parrot"]

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib(nibName: "CustomNibTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "nibtableview" )
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return 3
        if section == 0
        {
            return Pet.pets.count
        }
        //return Pet.pets.count
        else if section == 1
        {
            return Player.players.count
        }
        else if section == 2{
        return Vehicle.vehicles.count
        }
        else
        {
            return Item.items.count
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueCustom" {
            if let second = segue.destination as? SecondViewController {
                second.delegate = self
            }
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
       //let petName = pets[indexPath.row]
            let PetName = Pet.pets[indexPath.row].PetName
            let imgid = Pet.pets[indexPath.row].imgid
       let sectionZerocell =  tableView.dequeueReusableCell(withIdentifier: "firstSectionCell", for: indexPath) as! firstCustomCell
        //print("\(indexPath)")
            sectionZerocell.imgView?.image = UIImage(named: imgid)
            sectionZerocell.labelView?.text = PetName
            
            
        return sectionZerocell
    }
        else if indexPath.section == 1{
            let PlayerName = Player.players[indexPath.row].PlayerName
            let imgid = Player.players[indexPath.row].imgid
        let defaultCell = tableView.dequeueReusableCell(withIdentifier: "secondSectionCell", for: indexPath) as!secondCustomCell
            defaultCell.imgView?.image = UIImage(named: imgid)
            defaultCell.labelView?.text = PlayerName
        return defaultCell
        }
        else if indexPath.section == 2{
        let VehicleName = Vehicle.vehicles[indexPath.row].VehicleName
        let imgid = Vehicle.vehicles[indexPath.row].imgid
        let defaultCell2 = tableView.dequeueReusableCell(withIdentifier: "thirdSectionCell", for: indexPath) as! thirdCustomCell
        defaultCell2.imgView?.image = UIImage(named: imgid)
        defaultCell2.lableView?.text = VehicleName
        return defaultCell2
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: "nibtableview", for: indexPath) as! CustomNibTableViewCell
                        
                        let ItemName = Item.items[indexPath.row].ItemName
                        let ItemId = Item.items[indexPath.row].ItemId
                        
                        //if let cell = cell as?  CustomNibTableViewCell{
                            cell.label1.text = ItemName
                            cell.label2.text = ItemId
                       // }
                        
                        return cell
        }
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                print(indexPath)
                performSegue(withIdentifier: "segueCustom", sender: self)
    }
    


}

