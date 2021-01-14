//
//  ContentView.swift
//  WebView
//
//  Created by Joep Hinderink on 17/12/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            VStack{
                HStack {
                    Text("Home")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                        .frame(alignment: .leading)
                        .padding(.horizontal)
                        Spacer()
                }
                Spacer()
            }
            .tabItem{ Image (systemName: "house.fill")}
        Webview(url: "https://www.albumframe.nl/products/albumframe")
            .edgesIgnoringSafeArea(.top)
            .tabItem { Image(systemName: "cart.fill") }
            .statusBar(hidden: true)
            Text("Jumbo App")
                .font(.largeTitle)
                .tabItem { Image (systemName: "star.fill") }
        }
        .statusBar(hidden: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
