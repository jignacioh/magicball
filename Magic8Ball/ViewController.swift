//
//  ViewController.swift
//  Magic8Ball
//
//  Created by juan hurtado on 4/02/18.
//  Copyright © 2018 Juan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ivBall: UIImageView!
    var randomNumberValue:Int=0
    let arrayAnswer:[String]=["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeImageViewBackground(myImage: ivBall)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionBallAsking(_ sender: UIButton) {
        
        changeImageViewBackground(myImage: ivBall)
        
    }
    
    func changeImageViewBackground(myImage:UIImageView) -> Void {
        randomNumberValue=Int(arc4random_uniform(5))
        myImage.image=UIImage.init(named: arrayAnswer[randomNumberValue])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion==UIEventSubtype.motionShake {
            changeImageViewBackground(myImage: ivBall)
        }
    }
}

