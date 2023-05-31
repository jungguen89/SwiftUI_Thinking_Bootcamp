//
//  ConditionalBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/31.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            
            Button("Circle Button: \(showCircle.description)", action: {
                showCircle.toggle()
            })
            
            // if - else 문을 통해 showCircle의 값에 따라
            // Circle()의 크기를 정함
            // if showCircle == false 대신 !showCirlce로 작성 가능
            if !showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            } else {
                Circle()
                    .frame(width: 200, height: 200)
            }
            
            Spacer()
            
            Button("Rectangle Button: \(showRectangle.description)", action: {
                showRectangle.toggle()
            })
            
            if showRectangle{
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            // 두 가지의 값을 비교해서 true, false 구문
            // &&, || 있음
            if showCircle&&showRectangle {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 100, height: 100)
            }
            Spacer()
            
        }
    }
}

struct ConditionalBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ConditionalBootcamp()
    }
}
