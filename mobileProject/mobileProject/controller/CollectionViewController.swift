//
//  CollectionViewController.swift
//  mobileProject
//
//  Created by İlkay Türe on 4.10.2022.
//

import UIKit



class CollectionViewController: UICollectionViewController {

    var news = [Model] ()
    
    let dataSource: [String] = ["automobile", "science", "hatke", "miscellaneous", "entertainment", "startup", "technology", "politics", "world", "sports", "business", "national", "all" ]


    override func viewDidLoad() {
        super.viewDidLoad()
       
      
    }
  
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    
        return dataSource.count
    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        var cell =  UICollectionViewCell()
        if let categoryCell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as? CollectionViewCell {
            categoryCell.configure(with: dataSource[indexPath.row])
            
            cell = categoryCell
            
        }
        return cell
    }
    
 
         

        


   
       

        
   
}
