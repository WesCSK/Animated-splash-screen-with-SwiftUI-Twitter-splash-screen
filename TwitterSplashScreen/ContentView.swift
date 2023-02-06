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
        HomeScreen()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
