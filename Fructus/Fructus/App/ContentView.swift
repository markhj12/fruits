//
//  ContentView.swift
//  Fructus
//
//  Created by Mark Hew on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: BODY
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    }
               }
            }.navigationTitle("Fruits")
        }//:Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
