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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trafficLightRed.alpha = 0.3
        trafficLightsGreen.alpha = 0.3
        trafficLightsYellow.alpha = 0.3
    }


}

