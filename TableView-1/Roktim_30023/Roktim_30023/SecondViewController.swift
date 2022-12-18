//
//  SecondViewController.swift
//  Roktim_30023
//
//  Created by Bjit on 6/12/22.
//

import UIKit

class SecondViewController: UIViewController {

    var delegate: ViewController?
    
    @IBOutlet weak var descriptionDetail: UILabel!
    @IBOutlet weak var imgDetail: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
//        if section == 0{
//            let petName = Pet.pets[indicator].name
//            let petImg = Pet.pets[indicator].imgId
//
//            labelDetailPage.text = petName
//            imgDetailPage.image = UIImage(named: petImg)
//        }
//
//        else if section == 1 {
//            let cricName = Cricket.crickets[indicator].name
//            let cricImg = Cricket.crickets[indicator].imgId
//
//            labelDetailPage.text = cricName
//            imgDetailPage.image = UIImage(named: cricImg)
//        }
//
//        else {
//            let fruitName = Fruit.fruits[indicator].name
//            let fruitImg = Fruit.fruits[indicator].imgId
//
//            labelDetailPage.text = fruitName
//            imgDetailPage.image = UIImage(named: fruitImg)
//        }
        let index = delegate?.tableView.indexPathForSelectedRow
        
        if index?.section == 0 {
            descriptionDetail.text = Pet.pets[index!.row].PetName
        }
        
    }
    



}
