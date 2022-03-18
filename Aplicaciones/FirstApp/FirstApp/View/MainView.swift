//
//  MainView.swift
//  FirstApp
//
//  Created by Francisco Javier Casais on 16/3/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
            VStack{
                ContentView()
                Divider().padding()
                MapView().frame(width: 300, height: 100)
                Divider().padding()
                ImageView()
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
