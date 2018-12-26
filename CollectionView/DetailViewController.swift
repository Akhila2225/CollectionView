//
//  DetailViewController.swift
//  CollectionView
//
//  Created by Akhila Chatharaju on 12/25/18.
//  Copyright © 2018 Akhila Chatharaju. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Image: UIImageView!
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

     Label.text = name
        Image.image = UIImage(named: name)
        
        // Do any additional setup after loading the view.
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
