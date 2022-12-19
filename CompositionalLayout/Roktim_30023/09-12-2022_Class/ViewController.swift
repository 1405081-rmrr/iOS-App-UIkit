//
//  ViewController.swift
//  09-12-2022_Class
//
//  Created by bjit on 9/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    let pets = ["liton", "mushi", "riad", "sabbir", "shakib", "tamim","liton", "mushi", "riad", "sabbir", "shakib", "tamim","liton", "mushi", "riad", "sabbir", "shakib", "tamim","liton", "mushi", "riad", "sabbir", "shakib", "tamim", "mushi", "riad", "sabbir", "shakib", "tamim", "mushi", "riad", "sabbir", "shakib", "tamim", "mushi", "riad", "sabbir", "shakib", "tamim"]
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let sectionLeftRightPadding = 10
    let interItemSpacing = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        
        let insets = NSDirectionalEdgeInsets(top: 2, leading: 2, bottom: 2, trailing: 2)
        
//        let largeItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1))
//
//        let largeItem = NSCollectionLayoutItem(layoutSize: largeItemSize)
//
//        largeItem.contentInsets = insets
        
        let smallItemSize1 = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/4), heightDimension: .fractionalHeight(1))
        
        let smallItem1 = NSCollectionLayoutItem(layoutSize: smallItemSize1)
        
        smallItem1.contentInsets = insets
        
        let hortGroupSize1 = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/4))
        let outerGroup1 = NSCollectionLayoutGroup.horizontal(layoutSize: hortGroupSize1 , subitems: [smallItem1, smallItem1])
        
        let smallItemSize2 = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .fractionalHeight(1))
        
        let smallItem2 = NSCollectionLayoutItem(layoutSize: smallItemSize2)
        
        smallItem2.contentInsets = insets
        
        
        let hortGroupSize2 = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/4))
        let outerGroup2 = NSCollectionLayoutGroup.horizontal(layoutSize: hortGroupSize2 , subitems: [smallItem2])
        let largeItemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1/4))
        
        let largeItem = NSCollectionLayoutItem(layoutSize: largeItemSize)
        
        largeItem.contentInsets = insets
        
//        let hortGroup = NSCollectionLayoutGroup.vertical(layoutSize: hortGroupSize, subitems: [smallItem1, smallItem1])
        
        
        let outerGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        
        let outerGroup = NSCollectionLayoutGroup.vertical(layoutSize: outerGroupSize, subitems: [outerGroup1, outerGroup1, outerGroup2, largeItem])
        
        let section = NSCollectionLayoutSection(group: outerGroup)
        
        let compositionalLayout = UICollectionViewCompositionalLayout(section: section)
        
        collectionView.collectionViewLayout = compositionalLayout
        
        // item
        // group
        // section
        
        
        
        
        let nib  = UINib(nibName: "CollectionViewCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "cell")
        
        let headNib = UINib(nibName: "CollectionHeaderFooterView", bundle: nil)
        collectionView.register(headNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "nibCell")
        
        collectionView.register(headNib, forSupplementaryViewOfKind: UICollectionView.elementKindSectionFooter, withReuseIdentifier: "nibCell")
    }

}

extension ViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath)
    }
}

extension ViewController: UICollectionViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pets.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        var pet = pets[indexPath.row]
        cell.imgView.image = UIImage(named: pet)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "nibCell", for: indexPath) as! CollectionHeaderFooterView
            
            header.label.text = "This is header"
            header.view.backgroundColor = .systemRed
            return header
        }
        else {
            let footer = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "nibCell", for: indexPath) as! CollectionHeaderFooterView
            
            footer.label.text = "This is Footer"
            footer.view.backgroundColor = .systemCyan
            return footer
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: 50, height: 50)
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let numberOfCellsInSection = 3
        let availableWidth = Int(collectionView.bounds.width) - (sectionLeftRightPadding * 2) - (interItemSpacing * (numberOfCellsInSection - 1))
        let cellDimension = availableWidth/numberOfCellsInSection
        
        return CGSize(width: cellDimension, height: cellDimension) // Individual size for each cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 50
    }
    
}



//extension ViewController: UICollectionViewFlowLayout {
//
//}
