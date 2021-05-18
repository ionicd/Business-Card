//
//  InfoView.swift
//  Business Card
//
//  Created by Saurav on 5/18/21.
//  Copyright © 2021 SAURAV. All rights reserved.
//

import SwiftUI

struct InfoView: View {
  let text: String
  let imageName: String
  var body: some View {
    HStack {
      Image(systemName: imageName)
        .foregroundColor(.green)
      RoundedRectangle(cornerRadius: 25)
        .colorInvert()
        .frame(height: 40)
        .overlay(
          Text(text)
            .foregroundColor(.black)
            .font(.system(size: 18)))
    }
    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
  }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill")
          .previewLayout(.sizeThatFits)
    }
}
