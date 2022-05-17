//
//  ContentView.swift
//  Stretch+Paws
//
//  Created by Ivy  Chen  on 5/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DetailView()) {
                Text("Downward-facing Dog")
            }
                
                Text("Lotus Pose")
                Text("Tree Pose")
            }
            .listStyle(.grouped)
            .navigationBarTitle("Stretch+Paws")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
