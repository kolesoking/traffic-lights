//
//  ViewController.swift
//  traffic lights
//
//  Created by катя on 15.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var trafficLightRed: UIView!
    @IBOutlet weak var trafficLightsYellow: UIView!
    @IBOutlet weak var trafficLightsGreen: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightRed.alpha = 0.3
        trafficLightsGreen.alpha = 0.3
        trafficLightsYellow.alpha = 0.3
        
        trafficLightRed.layer.cornerRadius = 60
        trafficLightsGreen.layer.cornerRadius = 60
        trafficLightsYellow.layer.cornerRadius = 60
        
        startButton.layer.cornerRadius = 10
        }

    @IBAction func changeTrafficLightsColorPressed(_ sender: Any) {
        startButton.setTitle("NEXT", for: .normal)
        
        if trafficLightRed.alpha < 1 && trafficLightsYellow.alpha < 1 || trafficLightsGreen.alpha == 1 {
            trafficLightRed.alpha = 1
            trafficLightsGreen.alpha = 0.3
        } else if trafficLightsYellow.alpha < 1 && trafficLightRed.alpha == 1 {
            trafficLightRed.alpha = 0.3
            trafficLightsYellow.alpha = 1
        } else if trafficLightsYellow.alpha == 1 && trafficLightsGreen.alpha < 1 {
            trafficLightsYellow.alpha = 0.3
            trafficLightsGreen.alpha = 1
        }
        
    }
}

