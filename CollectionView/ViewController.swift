//
//  ViewController.swift
//  CollectionView
//
//  Created by Diego on 05/02/19.
//  Copyright © 2019 Diego. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
 
    
    let imageURLs = [
        "https://www.nationalgeographic.com.es/medio/2017/07/13/playa-de-calblanque-la-manga_d69607cb.jpg",
        "http://t2.gstatic.com/images?q=tbn:ANd9GcQob9105oHMBENJBgrmXmTCRSs14m8FVZfOf25WTN7lO3qT-GJs6N_YXG7G",
        "http://t1.gstatic.com/images?q=tbn:ANd9GcRbm05Y2f6R4q9apNggsKZ5gLpbnkaeENis609zG_9RPq6t0gQ8jeoMW6-w",
        "http://t3.gstatic.com/images?q=tbn:ANd9GcTwe8tovwf3oZDDI3C6NVSEQ51jUP2FXjoajqBmJeTCoQ6avOMlfqbLny1d",
        "https://www.nationalgeographic.com.es/medio/2017/07/13/playa-de-calblanque-la-manga_d69607cb.jpg",
        "https://www.nationalgeographic.com.es/medio/2017/07/13/playa-de-calblanque-la-manga_d69607cb.jpg",
        "https://www.nationalgeographic.com.es/medio/2017/07/13/playa-de-calblanque-la-manga_d69607cb.jpg",
        "https://www.nationalgeographic.com.es/medio/2017/07/13/playa-de-calblanque-la-manga_d69607cb.jpg"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Descomentar para que sean 3 columnas
        // let width = (view.frame.size.width - 20) / 3
        //Dos columnas
        let width = (view.frame.size.width - 20) / 2
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: width, height: width)

}
}

extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageURLs.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! cellcontroller
    let resource = ImageResource(downloadURL: URL(string: imageURLs[indexPath.row])!, cacheKey:imageURLs[indexPath.row])
    cell.imagecell.kf.setImage(with: resource)
    cell.labelcell.text = imageURLs[indexPath.row]

        return cell
        
    }
    
    
    
    
    
    
}
    


