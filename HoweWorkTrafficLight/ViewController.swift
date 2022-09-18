//
//  ViewController.swift
//  HoweWorkTrafficLight
//
//  Created by Елена Шахова on 18.09.22.
//

import UIKit



class ViewController: UIViewController {
    var counter = 0
    @IBOutlet var viewTrafficLightRed: UIView!
    
    @IBOutlet var viewTrafficLightYellow: UIView!
    
    @IBOutlet var viewTrafficLightGreen: UIView!
    
    @IBOutlet var startingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startingButton.layer.cornerRadius = 10
        viewTrafficLightRed.layer.cornerRadius = viewTrafficLightRed.frame.width / 2
        viewTrafficLightYellow.layer.cornerRadius = viewTrafficLightYellow.frame.width / 2
        viewTrafficLightGreen.layer.cornerRadius = viewTrafficLightGreen.frame.width / 2
        viewTrafficLightRed.alpha = 0.3
        viewTrafficLightYellow.alpha = 0.3
        viewTrafficLightGreen.alpha = 0.3
    }
    
    @IBAction func startingButtonDidTapped() {
        startingButton.setTitle(
            startingButton.isHidden ? "START" : "NEXT",
            for: .normal
        )
        switch counter {
            case 0:
                viewTrafficLightRed.alpha = 1
                viewTrafficLightYellow.alpha = 0.3
                viewTrafficLightGreen.alpha = 0.3
            case 1:
                viewTrafficLightRed.alpha = 0.3
                viewTrafficLightYellow.alpha = 1
                viewTrafficLightGreen.alpha = 0.3
            default:
                viewTrafficLightRed.alpha = 0.3
                viewTrafficLightYellow.alpha = 0.3
                viewTrafficLightGreen.alpha = 1
        }
        counter += 1
        if counter == 3 {
            counter = 0
        }
    }
}

