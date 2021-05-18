//
//  ContentView.swift
//  Business Card
//
//  Created by Saurav on 5/18/21.
//  Copyright © 2021 SAURAV. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      ZStack{
        Color(.darkGray)
//        Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.0)
          .edgesIgnoringSafeArea(.all)
        VStack {
          Image("Saurav")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 150.0, height: 150.0)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
          Text("Saurav KC")
            .font(Font.custom("FiraMono-Regular", size: 30))
            .bold()
            .foregroundColor(.white)
          Text("iOS Developer")
            .foregroundColor(.white)
            .font(.system(size: 18))
          Divider()
          InfoView(text: "+1 123 345 5678", imageName: "phone.fill")
          InfoView(text: "sauravkc@email.com", imageName: "envelope.fill")
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView().previewDevice("iPhone 8 Plus")
    }
}
