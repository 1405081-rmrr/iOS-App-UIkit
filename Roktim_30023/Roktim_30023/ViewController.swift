//
//  ViewController.swift
//  Roktim_30023
//
//  Created by Bjit on 28/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//    @IBAction func redButtonPressed(_ sender: UIButton) {
//        labelMessage.text = "Red"
//        labelMessage.textColor = UIColor.red
//    }
//
//    @IBAction func blueButton(_ sender: Any) {
//        labelMessage.text = "Blue"
//        labelMessage.textColor = UIColor.blue
//    }
//
//    @IBAction func yellowButton(_ sender: Any) {
//        labelMessage.text = "Yellow"
//        labelMessage.textColor = UIColor.yellow
//    }
    
    
    @IBAction func redbtn(_ sender: Any) {
        labelMessage.text = "Red"
        labelMessage.textColor = UIColor.red
    }
    
    @IBAction func bluebtn(_ sender: Any) {
        labelMessage.text = "Blue"
        labelMessage.textColor = UIColor.blue
    }
    
    
    @IBAction func yellowbtn(_ sender: UIButton) {
        labelMessage.text = "Yellow"
        labelMessage.textColor = UIColor.yellow
    }
    
    
 
   
   
    
    
    
    
//    @IBAction func blueButton(_ sender: UIButton) {
//        labelMessage.text = "Blue"
//        labelMessage.textColor = UIColor.blue
//    }
    
  
}

