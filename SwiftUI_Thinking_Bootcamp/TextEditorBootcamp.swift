//
//  TextEditorBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/11.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditroText: String = "This is the starting text!!!"
    @State var savedText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditroText)
                    .frame(height: 250)
                    //.foregroundColor(.red)
                    //.background(Color.red)
                    .colorMultiply(.gray.opacity(0.5))
                    .cornerRadius(10)
                Button(action: {
                    savedText = textEditroText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                Text(savedText)
                
                Spacer()
                
                NavigationLink("GOGO", destination: Text("NEw scroeen"))
            }
            .padding()
            .background(Color.white)
            .navigationTitle("TextEditor Bootcamp!")
            
        }
    }
}

struct TextEditorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorBootcamp()
    }
}


