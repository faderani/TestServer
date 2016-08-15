//
//  ViewController.swift
//  TestServer
//
//  Created by Soroush Shahi on 8/14/16.
//  Copyright © 2016 Soroush. All rights reserved.
//

import UIKit
import CFNetwork
import Foundation
class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ClientHandling.instance.testudpBroadcastclient(UIDevice.currentDevice().name + " is online")
        ClientHandling.instance.testudpReceiveFromServer()
        while true {
            ClientHandling.instance.testudpReceiveFromServer()
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
           }

        
    

}

