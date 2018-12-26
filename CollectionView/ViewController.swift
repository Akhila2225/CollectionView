//
//  ViewController.swift
//  CollectionView
//
//  Created by Akhila Chatharaju on 12/25/18.
//  Copyright © 2018 Akhila Chatharaju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    
    var imageArray = ["Jackson Hole","Machu Picchu","Phuket","Vancouver","Eifel Tower","London","Rome","Sydney","Grand Canyon","Bali"]
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as!DetailViewController
        
        vc.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view,typically from a nib.
     
        performSegue(withIdentifier: "segue", sender: self)
        
    }
}
extension ViewController: UICollectionViewDataSource,UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DataCollectionViewCell
       
        cell?.image.image = UIImage(named: imageArray[indexPath.row])
        
        cell?.label.text = imageArray[indexPath.row]
        return cell!
    }

       
    func collectionView(_ collectionView: UICollectionView,numberOfItemsInSection section:Int) -> Int {
        return imageArray.count
    
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
       
        vc?.name = imageArray[indexPath.row]
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }

}
