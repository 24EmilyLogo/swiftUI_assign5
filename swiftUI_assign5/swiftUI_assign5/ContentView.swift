//
//  ContentView.swift
//  swiftUI_assign5
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var notes:[[String]] = []
    var body: some View {
        NavigationView{
            VStack {
                HStack {
                    Text("Notes")
                        .font(.system(size:35))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding()
                    Spacer()
                    NavigationLink(destination: {
                        NewNoteView()
                            .navigationBarBackButtonHidden(true)
                    }, label: {
                        
                    Text("New Note")
                        .padding()
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(10)
                        .padding()
                    })
                }
                Spacer()
            }
        }
    }
}
    

#Preview {
    ContentView()
}
