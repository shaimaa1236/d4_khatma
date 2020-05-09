//
//  ContentView.swift
//  khatma
//
//  Created by Shaimaa on 5/9/20.
//  Copyright © 2020 Shaimaa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counterKH = 0
    var body: some View {
        ZStack{
            ramadanBackGround()
            VStack (alignment: .center, spacing: 20, content: {
                Stepper("كم ختمة تريد ان تختم؟", value: $counterKH, in: 0...30)
                    .foregroundColor(.black)
                    .padding(.horizontal, 20)
                    .font(.system(size: 20))
                    .frame(width: 350, height: 35)
                    .background(Color(#colorLiteral(red: 0.6289540529, green: 1, blue: 0.7748948932, alpha: 0.5484000428)))
                    .cornerRadius(8)
                HStack{
                    Text(khatma(counter: counterKH).0)
                    Text(khatma(counter: counterKH).1)
                }.foregroundColor(.white)
                    .font(.system(size: 20))
                HStack{
                    Text(" عدد من الختمات لتقزأها")
                    Text("\(counterKH * 20)")
                    Text(" تحتاج الى")
                } .foregroundColor(.white)
                    .font(.system(size: 20))
            })
        }
    }
    func khatma (counter: Int) -> (String, String){
        switch counter {
        case 1 :
            return ("ختمة واحدة","")
        case 2 :
            return ("ختمتان","")
        case 3...10 :
            return ("ختمات","\(counter)")
        default :
            return ("ختمة","\(counter)")
        }
    }
}


struct ramadanBackGround: View {
    var body: some View {
        ZStack{
            Image("BACKGROUND")
                .resizable()
                .opacity(0.8)
            VStack{
                Image("Header")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image("Mosque")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(counterKH: 0)
    }
}
