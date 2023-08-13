//
//  ViewController.swift
//  TimeTheEgg
//
//  Created by Kirishikesan on 2023-08-13.
//

import UIKit

class ViewController: UIViewController {

    let softTime : Int = 5
    let mediumTime : Int = 7
    let hardTime : Int = 12
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        print(sender.titleLabel?.text)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

