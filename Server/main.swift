/*
 Copyright (c) <2014>, skysent
 All rights reserved.
 
 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:
 1. Redistributions of source code must retain the above copyright
 notice, this list of conditions and the following disclaimer.
 2. Redistributions in binary form must reproduce the above copyright
 notice, this list of conditions and the following disclaimer in the
 documentation and/or other materials provided with the distribution.
 3. All advertising materials mentioning features or use of this software
 must display the following acknowledgement:
 This product includes software developed by skysent.
 4. Neither the name of the skysent nor the
 names of its contributors may be used to endorse or promote products
 derived from this software without specific prior written permission.
 
 THIS SOFTWARE IS PROVIDED BY skysent ''AS IS'' AND ANY
 EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL skysent BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */
import Foundation
import Darwin.C
//testudpBroadcastclient()

func echoService(client c:TCPClient){
    print("newclient from:\(c.addr)[\(c.port)]")
    let d=c.read(1024*10)
    c.send(data: d!)
    c.close()
}

func testtcpBroadcastserver(){
   
        let server:TCPServer = TCPServer(addr: "127.0.0.1", port: 8080)
        var (success,msg)=server.listen()
        if success{
            print("server is listening")
            while true{
                if let client=server.accept(){
                    echoService(client: client)
                }else{
                    print("accept error")
                }
            }
        }else{
            print(msg)
        }
    
}
//testudpserver()
//testudpclient()

testtcpBroadcastserver()

var stdinput=NSFileHandle.fileHandleWithStandardInput()
stdinput.readDataToEndOfFile()

