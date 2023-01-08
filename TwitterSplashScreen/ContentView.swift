//
//  ContentView.swift
//  TwitterSplashScreen
//
//  Created by Swee Kwang Chua on 8/1/23.
//

import SwiftUI

struct ContentView: View {
    @State var isHomeRootScreen = false
    @State var scaleAmount: CGFloat = 1
    
    var body: some View {
        ZStack {
            Color("twitter_blue")
            
            if isHomeRootScreen {
                HomeScreen()
            } else {
                Image("twitter_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .scaleEffect(scaleAmount)
                    .frame(width: 80)
            }
        }
        .ignoresSafeArea()
        .onAppear {
            // Shrink the icon
            withAnimation(.easeOut(duration: 0.5)) {
                scaleAmount = 0.6
            }
            
            // Enlarge the logo
            withAnimation(.easeInOut(duration: 1).delay(0.5)) {
                scaleAmount = 80

            }
            
            // Do somehing after the animation is done
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5){
                isHomeRootScreen = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
