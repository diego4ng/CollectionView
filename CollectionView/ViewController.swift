//
//  ViewController.swift
//  CollectionView
//
//  Created by Diego on 05/02/19.
//  Copyright © 2019 Diego. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var  collectionData = ["1","2","3","4","5","6","7","8","9","10","11","12"]
    let imageURLs = [
        "http://t1.gstatic.com/images?q=tbn:ANd9GcS0cjDhf5MPvwPyjPWeAJMSsrAEbQoFeRQU78-B-F0fftw5OdBrwr4o1Uy",
        "http://t2.gstatic.com/images?q=tbn:ANd9GcQob9105oHMBENJBgrmXmTCRSs14m8FVZfOf25WTN7lO3qT-GJs6N_YXG7G",
        "http://t1.gstatic.com/images?q=tbn:ANd9GcRbm05Y2f6R4q9apNggsKZ5gLpbnkaeENis609zG_9RPq6t0gQ8jeoMW6-w",
        "http://t3.gstatic.com/images?q=tbn:ANd9GcTwe8tovwf3oZDDI3C6NVSEQ51jUP2FXjoajqBmJeTCoQ6avOMlfqbLny1d",
        "http://t0.gstatic.com/images?q=tbn:ANd9GcR5Rizfjr_C3DbB8QLBvNo57OAZYqdUsgAYquYOuM44_vzyRctKUhZReTW",
        "http://t1.gstatic.com/images?q=tbn:ANd9GcTFIR5hoxegrBnJk9tr4KHay56tv4IQdvszDi8xepp_nvuRGl9dhLhvW79",
        "http://t0.gstatic.com/images?q=tbn:ANd9GcSHUXhN8i5bb1Jnn_nhzx7HLlyopLPGxb4ljnbEvQu-sl7zS_mTGtsaoUc",
        "http://t1.gstatic.com/images?q=tbn:ANd9GcT1f-BwhNxzvy2aHcGLxYeGwYN_liLnCMFi7VkAHKL53lokLa_2i_uUZgZ"]
    
    let URL_IMAGE = URL(string: "http://www.simplifiedtechy.net/wp-content/uploads/2017/07/simplified-techy-default.png")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //starting the download task

        
    }


}
extension ViewController : UICollectionViewDelegate, UICollectionViewDataSource{
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath)
        
        if let label = cell.viewWithTag(100) as? UILabel {
            label.text = collectionData[indexPath.row]
        }
        
       
        return cell
        
    }
    
    
    
    
    
    
}
    


