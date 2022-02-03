//
//  ContentView.swift
//  Modal
//
//  Created by Etienne Vautherin on 03/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State var showModal = false
    
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
            Button("More") {
                showModal = true
            }
        }.sheet(isPresented: $showModal) {
            ModalView(showModal: $showModal)
        }
    }
}

struct ModalView: View {
    @Binding var showModal: Bool
    
    var body: some View {
        VStack {
            Text("Hello, again")
                .padding()
            Button("OK") {
                showModal = false
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
