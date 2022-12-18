//
//  ViewController.swift
//  Reza_Roktim_30023
//
//  Created by Bjit on 30/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func append(_ sender: Any) {
        if let text1 = textfield.text , let text2 = label.text
        {
            label.text = text2 + text1
        }
    }
    
    @IBAction func clear(_ sender: Any) {
        label.text = " "
    }
}

