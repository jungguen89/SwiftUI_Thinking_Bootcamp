//
//  StateBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/29.
//

import SwiftUI

struct StateBootcamp: View {
    
    // State로 할당하면 변수의 변활르 감지한다.
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
            
            // cpntent
            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.system(size: 50))
                Text("Count: \(count)")
                    .font(.system(size: 45))
                    .underline()
                
                HStack {
                    Button("Button1",
                           action: {
                        backgroundColor = .red
                        myTitle = "Button 1 was pressed"
                        count = count + 1
                    })
                    
                    Button("Button2",
                           action: {
                        backgroundColor = .yellow
                        myTitle = "Button 2 was pressed"
                        count = count - 1
                        
                    })
                }
                     
            }
            .foregroundColor(.white)
            
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
