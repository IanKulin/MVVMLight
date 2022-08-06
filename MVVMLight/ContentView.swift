//
//  ContentView.swift
//  MVVMLight
//
//  Created by Ian Bailey on 6/8/2022.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel = LightViewModel()
    
    
    var body: some View {
        VStack{
            
            Spacer()
            
            if viewModel.isOn(){
                Text("Light On").font(.largeTitle)
            }
            else{
                Text("Light Off").font(.largeTitle)
            }
            
            Spacer()
            
            Button("Toggle Light", action: {
                viewModel.setLightOn(!viewModel.isOn())}
            )
            .padding()
            .foregroundColor(.white)
            .font(.title)
            .background(Color.accentColor)
            .cornerRadius(10)
            .padding()
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
