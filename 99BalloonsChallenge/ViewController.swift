//
//  ViewController.swift
//  99BalloonsChallenge
//
//  Created by Mary Grace Lucas on 8/15/15.
//  Copyright (c) 2015 Mary Grace Lucas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var balloonLabel: UILabel!
    
    var myBalloonArray:[Balloon] = []
    
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.createBalloons()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
        let nextBalloon = myBalloonArray[currentIndex]
     
        self.balloonLabel.text = "Balloon #\(nextBalloon.balloonNumber)"
        self.imageView.image = nextBalloon.balloonImage
        
        currentIndex += 1

        self.balloonLabel.hidden = false
        self.balloonLabel.textColor = UIColor.blueColor()
        
    }

    func createBalloons () {
        for var balloonCount = 0; balloonCount <= 99; ++balloonCount {
            var randomBalloon = Balloon()
            randomBalloon.balloonNumber = balloonCount
            
            let randomNumber = Int(arc4random_uniform(UInt32(4)))
            
            switch randomNumber {
            case 1:
                randomBalloon.balloonImage = UIImage(named: "RedBalloon1.jpg")
            case 2:
                randomBalloon.balloonImage = UIImage(named: "RedBalloon2.jpg")
            case 3:
                randomBalloon.balloonImage = UIImage(named: "RedBalloon3.jpg")
            default:
                randomBalloon.balloonImage = UIImage(named: "RedBalloon4.jpg")
            }
                self.myBalloonArray.append(randomBalloon)
            
        }
        
    }
    
}

