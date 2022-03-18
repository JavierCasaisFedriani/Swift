//
//  ContentView.swift
//  FirstApp
//
//  Created by Francisco Javier Casais on 16/3/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Bienvenido al tutorial de SwiftUI")
                .font(.title)
                .foregroundColor(Color.blue)
                .padding()
                .background(Color.green)
            
            Spacer()
            
            ZStack{
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.green)
                    .padding(40)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.red)
                    .padding(60)
                Text("")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.yellow)
                    .padding(80)
                    
                
            }
            
            Spacer()
            
            HStack{
                Text("Hola a todos")
                    .foregroundColor(Color.blue)
                    .padding()
                    .background(Color.green)
                Text("Esto es Horizontal")
                    .foregroundColor(Color.blue)
                    .padding()
                    .background(Color.green)
            }

        }.background(Color.gray)
    }
}

//Nos muestra como se ve nuestra vista
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
