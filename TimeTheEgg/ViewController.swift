//
//  ViewController.swift
//  TimeTheEgg
//
//  Created by Kirishikesan on 2023-08-13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes : [String:Float] = ["Soft" : 30.0, "Medium" : 420.0, "Hard" : 720.0]
    var counter : Float = 0.0
    var timer = Timer()
    var totalTime : Float = 0.0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        progressBar.progress = 0.0
        titleLabel.text = "How do you like your eggs?"
        let senderLabel : String = (sender.titleLabel?.text)!
        counter = (eggTimes[senderLabel]!)
        print(counter)
        totalTime = Float(counter)
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @objc func updateCounter() {
        if counter > 0 {
            print("\(counter) seconds to perfection")
            counter -= 1
            var progress = (1/totalTime) * Float(totalTime-counter)
            print(progress)
            progressBar.progress = progress
        } else {
            titleLabel.text = "Time to eat your egg"
            timer.invalidate()
        }
    }

}

