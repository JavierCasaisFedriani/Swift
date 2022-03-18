//
//  ImageView.swift
//  FirstApp
//
//  Created by Francisco Javier Casais on 16/3/22.
//
//============Mostar imagen==================

import SwiftUI

struct ImageView: View {
    var body: some View {
        HStack {
            Image("tanjiro")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.yellow, lineWidth: 4)).shadow(color: Color.black, radius: 5)
            
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.yellow, lineWidth: 4)).shadow(color: Color.black, radius: 5)
                .foregroundColor(.blue)
        }
            
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
