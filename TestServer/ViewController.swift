//
//  ViewController.swift
//  TestServer
//
//  Created by Soroush Shahi on 8/14/16.
//  Copyright © 2016 Soroush. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        testudpBroadcastclient()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
           }

    func testudpBroadcastclient(){
        //wait a few second till server will ready
        sleep(2)
        print("Broadcastclient.send...")
        let clientB:UDPClient = UDPClient(addr: "255.255.255.255", port: 8080)
        clientB.enableBroadcast()
        clientB.send(str: "test hello from broadcast")
        clientB.close()
    }

}

