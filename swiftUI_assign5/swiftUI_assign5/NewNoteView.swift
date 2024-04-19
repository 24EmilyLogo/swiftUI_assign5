//
//  NewNoteView.swift
//  swiftUI_assign5
//
//  Created by StudentAM on 3/25/24.
//

import SwiftUI

struct NewNoteView: View {
    @State public var noteTitle: String = ""
    @State public var noteBody: String = ""
    var body: some View {
        Spacer()
        Text("\(noteTitle)")
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
        TextField("Enter Note Title", text:$noteTitle)
            .padding()
            .background(Color.yellow)
            .cornerRadius(10)
            .padding([.trailing, .leading])
        HStack {
            TextEditor(text:$noteBody)
                .padding()
                .frame(height: 525)
    
        }
        .frame(height: 550)
        .background(Color(red:0.5, green:0.2, blue:1 ))
        .cornerRadius(10)
        .padding([.trailing, .leading])
        
        ZStack {
            NavigationLink(destination: {
                ContentView()
                    .navigationBarBackButtonHidden(true)
            }, label: {
                
                Text("Save Note")
            
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(10)
                .padding()
                
                Button("Save Note", action:{})
        })
        }
        
    }
}

#Preview {
    NewNoteView()
}
