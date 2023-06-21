 //
//  ButtonStyleBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/21.
//

import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack {
            Button("Button Plain") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button("Button Automatic") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.automatic)
            
            Button("Button Bordered") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            // set a button size
            .controlSize(.large)
            .buttonStyle(.bordered)
            
            Button("Button BorderedProminent") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            
            Button("Button Borderless") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            
            Button {
                
            } label: {
                Text("Last Button")
                    .frame(height: 55)
//                    .frame(maxWidth: .infinity)
            }
            .buttonBorderShape(.capsule)
            .buttonStyle(.borderedProminent)


        }
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
