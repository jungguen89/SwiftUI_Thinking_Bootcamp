//
//  ContextMenuBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/09.
//

import SwiftUI

struct ContextMenuBootcamp: View {
    
    @State var backgroundColor: Bool = false
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 10.0) {
                Image(systemName: "house.fill")
                    .font(.title)
                Text("SwiftUI Thinking")
                    .font(.headline)
                Text("How to use Context Menu")
                    .font(.subheadline)
            }
        }
        .foregroundColor(.white)
        .padding(20)
        .background(backgroundColor ? .red : .green)
        .cornerRadius(20)
        .contextMenu(menuItems: {
            Button(action: {
                backgroundColor.toggle()
            }, label: {
                Label("Change color", systemImage: "house.fill")
            })
        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
