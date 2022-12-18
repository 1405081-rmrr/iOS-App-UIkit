//
//  ViewController.swift
//  Roktim_30023_dec8
//
//  Created by Bjit on 7/12/22.
//

import UIKit
struct Item {
    var ItemName: String
    var ItemPrice: String
}

extension Item {
    static var items = [Item(ItemName: "Pen", ItemPrice: "$30"),
                           Item(ItemName: "Pencil", ItemPrice: "$60"), Item(ItemName: "Book", ItemPrice: "$30"),
                           Item(ItemName: "Mobile", ItemPrice: "$600")]
}
class ViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource{
    
    
    @IBAction func pressButton(_ sender: Any) {
        appendData(name: nameTextField.text!, price: priceTextField.text!)
    }
    func appendData(name: String, price: String) {
        Item.items.append(Item(ItemName: name, ItemPrice: price))
        tableView.reloadData()
    }
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var tableView: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Item.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let firstCell = tableView.dequeueReusableCell(withIdentifier: "customcell", for: indexPath) as! FirstCustomCell
        
        firstCell.label1.text = Item.items[indexPath.row].ItemName
                firstCell.label2.text = Item.items[indexPath.row].ItemPrice
                return firstCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
//            Item.items.remove(at: indexPath.row)
//            tableView.reloadData()
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .top)
            Item.items.remove(at: indexPath.row)
            tableView.endUpdates()
//            tableView.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
}

}

