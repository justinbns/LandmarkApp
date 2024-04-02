//
//  ContentView.swift
//  LandmarkApp
//
//  Created by Justin Jefferson on 30/03/24.
//

import SwiftUI

struct ContentView: View {
    @State var NumbertoMessage = ""
    @State var Message = ""
    
    var body: some View{
        VStack{
            TextField("Enter your Phone Number", text:$NumbertoMessage)
            TextField("Enter Your Message", text: $Message)
                .padding()
            Button(action: {
                sendMessage()
            }, label: {
                Text("Send Message").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(Color.orange)
            })
        }
    }
    func sendMessage(){
        let sms: String = "sms:\(NumbertoMessage)&body=\(Message)"
        let strURL: String = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
//        UIApplication.shared.open(URL.init(string: strURL)!, options: [:], completionHandler: nil)
    }
}

struct ContentView_Previews: PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

