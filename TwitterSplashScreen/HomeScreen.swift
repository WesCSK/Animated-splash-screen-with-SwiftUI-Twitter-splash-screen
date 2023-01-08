//
//  HomeScreen.swift
//  TwitterSplashScreen
//
//  Created by Swee Kwang Chua on 8/1/23.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationStack {
            
            Text("Like and Subscribe")
            Text("Wes Chua")
                .font(.largeTitle)
                .bold()
            
            .navigationTitle("Twitter")
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
