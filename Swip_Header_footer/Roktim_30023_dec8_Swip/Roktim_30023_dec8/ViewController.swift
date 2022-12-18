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
    var image : String
}

extension Item {
    static var items = [Item(ItemName: "Pen", ItemPrice: "$30" , image: "kaka"),
                           Item(ItemName: "Pencil", ItemPrice: "$60", image: "kaka"), Item(ItemName: "Book", ItemPrice: "$30", image: "kaka"),
                           Item(ItemName: "Mobile", ItemPrice: "$600", image: "kaka")]
}
class ViewController: UIViewController,  UITableViewDelegate, UITableViewDataSource{
    
    
    @IBAction func pressButton(_ sender: Any) {
        appendData(name: nameTextField.text!, price: priceTextField.text!)
    }
    func appendData(name: String, price: String) {
        Item.items.append(Item(ItemName: name, ItemPrice: price, image: "kaka"))
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
        firstCell.imgView.image = UIImage(named: Item.items[indexPath.row].image)
               
                return firstCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    
//    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
//        return .delete
//    }
//    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
//        if editingStyle == .delete {
////            Item.items.remove(at: indexPath.row)
////            tableView.reloadData()
//            tableView.beginUpdates()
//            tableView.deleteRows(at: [indexPath], with: .top)
//            Item.items.remove(at: indexPath.row)
//            tableView.endUpdates()
////            tableView.reloadData()
//        }
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
}
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        // while delete btn pressed, the closour will be xecuted
        // if we pass self to a closour, then it should be weak
        // Retention cycle = weak self = Can be no longer keep it to memory
        
        
        
        let deleteAction = UIContextualAction(style: .destructive, title: nil) {[weak self] _,_,completion in
            
            // self to accedd properties of viewContlooer
            guard let self = self else {return}
            
            self.handleDeleteAction(indexPath: indexPath)
//            completion(true) // It's true if succesfully done
        }
        
        let editAction = UIContextualAction(style: .normal, title: nil) {[weak self] _,_,completion in
            
            // self to accedd properties of viewContlooer
            guard let self = self else {return}
            
            self.handleEditAction(indexPath: indexPath)
            completion(true) // It's true if succesfully done
        }
        
        deleteAction.image = UIImage(systemName: "trash")
        deleteAction.backgroundColor = .systemRed
        
        editAction.image = UIImage(systemName: "pencil")
        editAction.backgroundColor = .blue
        
        let swipAction =  UISwipeActionsConfiguration(actions: [deleteAction, editAction])
        swipAction.performsFirstActionWithFullSwipe = false
        return swipAction
    }
    
    func handleDeleteAction(indexPath: IndexPath) {
        tableView.beginUpdates()
        Item.items.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .bottom)
        tableView.endUpdates()
    }
    
    func handleEditAction(indexPath: IndexPath) {
        print("Edited")
        
        Item.items[indexPath.row] = Item(ItemName: "Keyboard", ItemPrice: "$200", image: "messi")
        tableView.reloadData()
    }

}

