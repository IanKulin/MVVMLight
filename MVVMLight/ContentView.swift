//
//  ContentView.swift
//  MVVMLight
//
//  Created by Ian Bailey on 6/8/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var light = LightViewModel()
    
    var body: some View {
        VStack{
            Spacer()
            if light.isOn {
                drawLitBulb
            }
            else {
                Image(systemName: "lightbulb.fill").font(.system(size: 72))
            }
            Spacer()
            Button("Toggle Light", action: {
                light.toggle()}
            )
            .padding()
            .font(.title)
            .foregroundColor(.white)
            .background(Color.accentColor)
            .cornerRadius(10)
            .padding()
        }
    }
    
    var drawLitBulb: some View {
        // view of an iluminated bulb
        ZStack{
            Circle().fill(.yellow).frame(width: 150, height: 150)
            Image(systemName: "lightbulb").font(.system(size: 72))
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
