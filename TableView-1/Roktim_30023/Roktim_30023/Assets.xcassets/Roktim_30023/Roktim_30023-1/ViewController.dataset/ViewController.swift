//
//  ViewController.swift
//  Roktim_30023
//
//  Created by Bjit on 5/12/22.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    let items = ["cat", "dog", "mobile"]
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
       let sectionZerocell =  tableView.dequeueReusableCell(withIdentifier: "firstSectionCell", for: indexPath)
        print("\(indexPath)")
        return sectionZerocell
    }
        else if indexPath.section == 1{
        let defaultCell = tableView.dequeueReusableCell(withIdentifier: "secondSectionCell", for: indexPath)
        return defaultCell
        }
        let defaultCell2 = tableView.dequeueReusableCell(withIdentifier: "thirdSectionCell", for: indexPath)
        return defaultCell2
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
     return 3
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }


}

