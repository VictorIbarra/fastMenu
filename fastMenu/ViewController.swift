//
//  ViewController.swift
//  fastMenu
//
//  Created by victor sotelo on 1/23/18.
//  Copyright © 2018 victor sotelo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
       menuCollectionView.delegate  = self
        menuCollectionView.dataSource  = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //variables 
    
    
    var imagesName : [String] = ["1","2","3","4","5"]
    var namesArr : [String] = ["hamburgesa","tacos","pizza","enchiladas","linguini"]
    
    // iboutles
    @IBOutlet weak var menuCollectionView: UICollectionView!

    
    
    //system functions 
    
    // cell for item
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "comidaCell", for: indexPath)as! menuCollectionViewCell
        
        cell.layer.cornerRadius = 40
        cell.imagenComida.image = UIImage(named: imagesName[indexPath.row])
        cell.comidaLabel.text = namesArr[indexPath.row]
        
        return cell
        
    }
    
    // numberofitemsinsection devuelve el numero de items que vamos a usar
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    // para el tamaño de las celsdas sizeforitemat
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let screenSize = UIScreen.main.bounds
        
        return CGSize(width: screenSize.width * 0.94, height: 220)
    }

    
    //para los bordes
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
    
}

