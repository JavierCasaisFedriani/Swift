//
//  ListDetailView.swift
//  FirstApp
//
//  Created by Francisco Javier Casais on 16/3/22.
//

import SwiftUI

struct ListDetailView: View {
    
    var programmer : Programmer
    @Binding var favorites : Bool
    
    var body: some View {
        VStack{
            programmer.image.resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.yellow, lineWidth: 4)).shadow(color: Color.black, radius: 5)
                .foregroundColor(.blue)
            HStack{
                Text(programmer.name).font(.largeTitle)
                Button{
                    favorites.toggle()
                }label: {
                    if favorites{
                        Image(systemName: "star.fill").foregroundColor(.yellow)
                    }else{
                        Image(systemName: "star.fill").foregroundColor(.black)
                    }
                }
            }
            
            Text(programmer.languages).font(.title)
            Spacer()
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(programmer: Programmer(id: 0, name: "Javi", languages: "Swift, Kotlin", image: Image("tanjiro"), favorite: true), favorites: .constant(false))
    }
}
