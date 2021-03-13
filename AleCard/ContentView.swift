//
//  ContentView.swift
//  AleCard
//
//  Created by Alexandra Negru on 17/02/2021.
//  Copyright © 2021 Alexandra Negru. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52).edgesIgnoringSafeArea(.all)
            VStack {
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Ellipse())
                    .overlay(Ellipse().stroke(Color.white, lineWidth: 5))
                Text("Alexandra Negru")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                    .bold()
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+04 293 4223", imageName: "phone.fill")
                InfoView(text: "ale@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
