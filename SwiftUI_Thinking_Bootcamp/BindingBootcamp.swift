//
//  BindingBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/29.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "This is the title"
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea(.all)
           
            VStack {
                Text(title)
                    .foregroundColor(.white)
                
                ButtonView(backgroundColor: $backgroundColor, title: $title)
            }
            
        }
    }
}

// BindingBootcamp 안에 있던 Button을
// ButtonView라는 하나의 View를 더 만들어 안에 삽입함
// 이 때 상위 View의 backgroundColor를 받기 위해 @Binding으로 받음
struct ButtonView: View {
    
    // 여기 위의 @State - @Binding으로 받음
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    var body: some View {
        
        Button(action: {
            backgroundColor = Color.yellow
            buttonColor = Color.pink
            title = "Button Pressed"
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(20)
        })
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}
