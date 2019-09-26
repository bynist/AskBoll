//
//  ViewController.swift
//  BollAskApp3
//
//  Created by Bayan on 9/26/19.
//  Copyright © 2019 bayan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomAnswer : Int = 0;

    @IBOutlet weak var bollImageView1: UIImageView!
    
    var bollArray = ["ball1","ball2","ball3","ball4","ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func askButton(_ sender: UIButton) {
       updateImage()
        
    }
    func updateImage(){
        randomAnswer = Int(arc4random_uniform(4))
       // print(randomAnswer)
        bollImageView1.image = UIImage(named: bollArray[randomAnswer])
    }

}

