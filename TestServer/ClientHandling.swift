//
//  ClientHandling.swift
//  TestServer
//
//  Created by Soroush Shahi on 8/14/16.
//  Copyright © 2016 Soroush. All rights reserved.
//

import Foundation
import UIKit

class ClientHandling {
    static var instance = ClientHandling()
    private let client : TCPClient!
    
    init(){
         client = TCPClient(addr: "127.0.0.1", port: 8080)
    }
    func testudpBroadcastclient(data : String){
        //wait a few second till server will ready
        //sleep(2)
        print("Broadcastclient.send...")
        client.connect(timeout: 10)
        client.send(str: "hello")
        //client.close()
        
    }
    
    func testudpReceiveFromServer () {
        if let string = client.read(1024*10) {
            print("\(string)") }
    }
    
    

}