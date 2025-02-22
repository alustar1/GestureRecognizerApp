//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Muhammet Kuzu on 14.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    var isJames = true
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePick))
        
        imageView.addGestureRecognizer(gestureRecognizer)
        
        
        
        
        
        
    }
    
    
    
    @objc func changePick() {
        
        
        if isJames == true {
            imageView.image = UIImage(named: "lars")
            myLabel.text = "Lars Ulrich"
            isJames = false
            
            
        }else{
            imageView.image = UIImage(named: "james")
            myLabel.text = "James Hetfield"
            isJames = true
        }
        


    }

}

