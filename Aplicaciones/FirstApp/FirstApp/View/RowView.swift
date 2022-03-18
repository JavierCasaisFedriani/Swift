//
//  RowView.swift
//  FirstApp
//
//  Created by Francisco Javier Casais on 16/3/22.
//

import SwiftUI

struct RowView: View {
    
    var programmer : Programmer
    
    var body: some View {
        HStack{
            programmer.image.resizable().frame(width: 70, height: 70)
                .padding()
            VStack(alignment: .leading){
                Text(programmer.name)
                    .font(.largeTitle)
                Text(programmer.languages)
                    
            }
            Spacer()
            
            if programmer.favorite{
                Image(systemName: "star.fill").foregroundColor(.yellow)
            }
            
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(programmer: Programmer(id: 1, name: "Javi", languages: "Swift, Kotlin", image: Image("tanjiro"), favorite: true))
            .previewLayout(
                .fixed(width: 200, height: 60))
    }
}
