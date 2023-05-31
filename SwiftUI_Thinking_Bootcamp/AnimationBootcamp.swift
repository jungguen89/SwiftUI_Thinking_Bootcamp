//
//  AnimationBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/31.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button", action: {
                
                // withAnimation 기능을 통해 색상이 변경되는 것을
                // 좀 더 자연스럽게? 혹은 프로그래머가 원하는 방식으로 표현할 수 있음
                withAnimation(.easeIn(duration: 1.5)) {
                    isAnimated.toggle()
                }
            })
            
            Spacer()
            
            RoundedRectangle(cornerRadius: isAnimated ? 25 : 50)
                .fill(isAnimated ? Color.gray : Color.red)
                .frame(
                    width: isAnimated ? 300 : 100,
                    height: isAnimated ? 300 : 100
                )
                .rotationEffect(Angle(degrees: isAnimated ? 360: 0))
                .offset(y: isAnimated ? 200:0 )
            
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
