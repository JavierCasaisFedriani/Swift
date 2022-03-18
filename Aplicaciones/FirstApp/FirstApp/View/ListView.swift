//
//  ListView.swift
//  FirstApp
//
//  Created by Francisco Javier Casais on 16/3/22.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject{
    @Published var programmers = [Programmer(id: 0, name: "Javi", languages: "Swift, Kotlin", image: Image("tanjiro"), favorite: true),
                               Programmer(id: 1, name: "Maria", languages: "Swift, Kotlin", image: Image(systemName: "person.fill"), favorite: false),
                               Programmer(id: 2, name: "Pedro", languages: "Swift", image: Image(systemName: "person.fill"), favorite: false)]
}

struct ListView: View {
    @EnvironmentObject var programmersModelData: ProgrammersModelData
    @State private var showFavorites = false
    private var filteredProgrammers : [Programmer]{
        return programmersModelData.programmers.filter{ programmer in
            return !showFavorites || programmer.favorite
        }
    }
    
    var body: some View {
        NavigationView{
            VStack{
                Toggle(isOn: $showFavorites) {
                    Text("Mostrar favoritos")
                }.padding()
            
            
                List(filteredProgrammers, id: \.id){ programmer in
                    NavigationLink (destination: ListDetailView(programmer: programmer, favorites: $programmersModelData.programmers[programmer.id].favorite)){
                        RowView(programmer: programmer)
                    }
                }
            }.navigationTitle("Programmers")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(ProgrammersModelData())
    }
}
