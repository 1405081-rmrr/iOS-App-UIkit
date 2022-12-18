//
//  ViewController.swift
//  Roktim_30023
//
//  Created by Bjit on 7/12/22.
//

import UIKit
struct Pet
{
    let PetName : String
    let imgid : String
    let description : String
}
struct Player
{
    let PlayerName : String
    let PlayerID : String
    let description : String
}
struct Item
{
    let ItemName : String
    let ItemId : String
    
}
struct Vehicle
{
    let PetName : String
    let imgid : String
    let description : String
}
extension Vehicle
{
    static let vehicles = [Vehicle(PetName: "bike", imgid: "bike", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under.This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under.This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under"), Vehicle(PetName: "car", imgid: "car", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under"), Vehicle(PetName: "bus", imgid: "bus", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under"), Vehicle(PetName: "cycle", imgid: "cycle", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under")]
}
extension Player
{
    static let players = [Player(PlayerName: "kaka", PlayerID : "kaka", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under.This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under.This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under"), Player(PlayerName: "messi", PlayerID: "messi", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under"), Player(PlayerName: "vinicius", PlayerID: "vinicius", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under"), Player(PlayerName: "neymar", PlayerID: "neymar", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under")]
}
extension Item
{
    static let items = [Item(ItemName: "mouse", ItemId: "Reza Md. Ruhul Roktim Reza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul RoktimReza Md. Ruhul Roktim"), Item(ItemName: "keyboard", ItemId: "keyboard"), Item(ItemName: "pc", ItemId: "pc"), Item(ItemName: "phone", ItemId: "phone"), Item(ItemName: "headphone", ItemId: "headphone"),Item(ItemName: "Xioami", ItemId: "Xioami"), Item(ItemName: "Chair", ItemId: "Chair")]
}
extension Pet
{
    static let pets = [Pet(PetName: "cat", imgid: "cat", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under.This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under.This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under"), Pet(PetName: "dog", imgid: "dog", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under"), Pet(PetName: "rabbit", imgid: "rabbit", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under"), Pet(PetName: "parrot", imgid: "parrot", description: "This is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others underThis is an amazing bike for under 2 lakh better look than other bikes good in mileage look very hard Essy in riding and look is fully killer and the color of this bike is amazing Available at a low price compared to other bikes R15 v4 is a better bike than others under")]
}
class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
       return Pet.pets.count
        }
        else if section == 1
        {
            return Player.players.count
        }
        else if section == 2
        {
            return Vehicle.vehicles.count
        }
        return Item.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
        let PetName = Pet.pets[indexPath.row].PetName
        let imgid = Pet.pets[indexPath.row].imgid
   let sectionZerocell =  tableView.dequeueReusableCell(withIdentifier: "firstCustomCell", for: indexPath) as! FirstCustomTable
       //print("\(indexPath)")
        sectionZerocell.imgView?.image = UIImage(named: imgid)
        sectionZerocell.labelView?.text = PetName
        
    return sectionZerocell
        }
        else if indexPath.section == 1{
        let PlayerName = Player.players[indexPath.row].PlayerName
        let PlayerID = Player.players[indexPath.row].PlayerID
   let sectionOnecell =  tableView.dequeueReusableCell(withIdentifier: "secondCustomCell", for: indexPath) as! FirstCustomTable
       //print("\(indexPath)")
        sectionOnecell.imgView2?.image = UIImage(named: PlayerID)
        sectionOnecell.labelView2?.text = PlayerName
        
    return sectionOnecell
        }
        else if indexPath.section == 2
        {
            let VehicleName = Vehicle.vehicles[indexPath.row].PetName
            let imgid = Vehicle.vehicles[indexPath.row].imgid
       let sectionTwocell =  tableView.dequeueReusableCell(withIdentifier: "thirdCustomCell", for: indexPath) as! FirstCustomTable
           //print("\(indexPath)")
            sectionTwocell.imgView3?.image = UIImage(named: imgid)
            sectionTwocell.labelView3?.text = VehicleName
            
        return sectionTwocell
            
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "nibtableview", for: indexPath) as! CustomNibTableViewCell
                    
                    let ItemName = Item.items[indexPath.row].ItemName
                    let ItemId = Item.items[indexPath.row].ItemId
                    
                    //if let cell = cell as?  CustomNibTableViewCell{
                        cell.label1.text = ItemName
                        cell.label2.text = ItemId
                   // }
                    
                    return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueCustom" {
            if let second = segue.destination as? SecondViewController {
                second.delegate = self
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        let nib = UINib(nibName: "CustomNibTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "nibtableview" )
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
                print(indexPath)
                performSegue(withIdentifier: "segueCustom", sender: self)
    }


}

