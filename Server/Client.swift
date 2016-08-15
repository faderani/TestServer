//
//  Client.swift
//  TestServer
//
//  Created by Soroush Shahi on 8/14/16.
//  Copyright © 2016 Soroush. All rights reserved.
//

import Foundation

class Client {
    
    private let client : UDPClient
    init(address : String){
        client = UDPClient(addr: address, port: 8080)
    }
    func testudpBroadcastclient(data : String){
        //wait a few second till server will ready
        //sleep(2)
        print("Broadcastclient.send...")
        client.enableBroadcast()
        client.send(str: data)
        //clientB.close()
        
    }
    
}