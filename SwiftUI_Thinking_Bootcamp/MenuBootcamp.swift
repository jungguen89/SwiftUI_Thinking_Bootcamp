//
//  MenuBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/21.
//

import SwiftUI

struct MenuBootcamp: View {
    
    @State var selected: Int = 0
    
    var body: some View {
        VStack {
            Menu("Click me!!!") {
                Button("One") {
                    
                }
                Button("Two") {
                    
                }
                Button("Three") {
                    
                }
                Button("Four") {
                    
                }
                Button("Five") {
                    
                }
            }
            Picker("Click Here",
                   selection: $selected,
                   content: {
                Text("1").tag(1)
                Text("2").tag(2)
            })
            
            Text("select :\(selected)")
        }
    }
}

struct MenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MenuBootcamp()
    }
}
