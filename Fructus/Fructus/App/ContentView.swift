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
                ForEach(fruits) { fruit in
                    FruitRowView(fruit: fruit)
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
