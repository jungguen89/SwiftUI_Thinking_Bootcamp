//
//  ExtractedFunctionsBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/29.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    @State var toggleColor = true
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        
        VStack (spacing: 30) {
            Text("Title")
                .font(.headline)
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Press me".uppercased())
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
            
            Toggle(isOn: $toggleColor, label: {
                Text("Toggle Button")
                    .foregroundColor(toggleColor ? Color.yellow : Color.blue)
            })
            
            Toggle(
                "Toggle Button",
                isOn: $toggleColor)
            .toggleStyle(.button)
            .font(.largeTitle)
            .foregroundColor(toggleColor ? Color.yellow : Color.black)
        }
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
