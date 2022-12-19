//
//  SecondViewController.swift
//  Roktim_30023
//
//  Created by Bjit on 7/12/22.
//

import UIKit

class SecondViewController: UIViewController {
    var delegate: ViewController?
    @IBOutlet weak var descriptionDetail: UILabel!
    @IBOutlet weak var imgDetail: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        let index = delegate?.tableView.indexPathForSelectedRow
//        descriptionDetail.text = Pet.pets[index!.row].description
//        imgDetail.image = UIImage(named: Pet.pets[index!.row].imgid)
        if index?.section == 0
        {
            descriptionDetail.text = Pet.pets[index!.row].description
            imgDetail.image = UIImage(named: Pet.pets[index!.row].imgid)
        }
        else if index?.section == 1
        {
            descriptionDetail.text = Player.players[index!.row].description
            imgDetail.image = UIImage(named: Player.players[index!.row].PlayerID)
        }
        else if index?.section == 2
        {
            descriptionDetail.text = Vehicle.vehicles[index!.row].description
            imgDetail.image = UIImage(named: Vehicle.vehicles[index!.row].imgid)
        }
        else
        {
            descriptionDetail.text = Item.items[index!.row].ItemId
            imgDetail.image = UIImage(named: Item.items[index!.row].ItemName)
        }
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
