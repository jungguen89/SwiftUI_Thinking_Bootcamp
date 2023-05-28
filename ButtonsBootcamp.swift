//
//  ButtonsBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/29.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        
        
        VStack(spacing: 30) {
            
            Text(title)
            
            Button("Press me!!!", action: {
                self.title = "Button#1 was Pressed"
            })
            // 색상 변경
            .tint(Color.red)
            
            Button(action: {
                self.title = "Button#2 was Pressed"
            }, label: {
                // 텍스트 설정
                Text("Press me!!!".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color.blue
                            .cornerRadius(20)
                            .shadow(radius: 20)
                    )
            })
            
            Button(action: {
                self.title = "Button #3 was Pressed"
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    )
            })
            
            Button(action: {
                self.title = "FInish".uppercased()
            }, label:  {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 5.0)
                    )
            })
        }
    }
}

struct ButtonsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonsBootcamp()
    }
}
