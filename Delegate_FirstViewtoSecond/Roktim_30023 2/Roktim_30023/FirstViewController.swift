//
//  FirstViewController.swift
//  Roktim_30023
//
//  Created by Bjit on 2/12/22.
//

import UIKit
protocol ChangeBGColorDelegate
{
    func changeImage(image : UIImage)

}

class FirstViewController: UIViewController,ChangeBGColorDelegate {
    func changeImage(image: UIImage) {
        imgView.image = image
    }
    

    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "imagepass"
        {
            if let dVC = segue.destination as? SecondViewController
            {
                dVC.delegate = self
            }
        }
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
