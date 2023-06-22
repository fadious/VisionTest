//
//  ContentView.swift
//  VisionTest
//
//  Created by Fadi Sayfi on 6/21/23.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State private var myList = ["Item1", "Item2", "Item3"]

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(myList, id: \.self) { item in
                    Text(item)
                }
            }
            .navigationTitle("Sidebar")
        } detail: {
            VStack {
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)

                Text("Hello, world!")
            }
            .navigationTitle("Content")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
