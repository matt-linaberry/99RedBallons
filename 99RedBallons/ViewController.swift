//
//  ViewController.swift
//  99RedBallons
//
//  Created by Matthew Linaberry on 1/24/15.
//  Copyright (c) 2015 Matthew Linaberry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var balloonImageView: UIImageView!
    
    @IBOutlet weak var balloonLabel: UILabel!
    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        if (currentIndex == 99) {
            currentIndex = 0
        }
        balloonImageView.image = myBalloons[currentIndex].imageView
        balloonLabel.text = "\(myBalloons[currentIndex].theNumber) balloons!"
        currentIndex++
    }
    var myBalloons:[Balloon] = []
    var currentIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initBalloons()
        balloonImageView.image = UIImage(named:"BerlinTVTower.jpg")
        balloonLabel.text = "0 balloons!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initBalloons()
    {
        for var balloonCount = 1; balloonCount <= 99; balloonCount++ {
            var aBalloon = Balloon()
            aBalloon.theNumber = balloonCount
            // initialize a random number from 1 - 4
            let randomNumber = Int(arc4random_uniform(UInt32(4))) + 1
            aBalloon.imageView = UIImage(named: "RedBalloon\(randomNumber).jpg")
            myBalloons.append(aBalloon)
        }
    }


}

