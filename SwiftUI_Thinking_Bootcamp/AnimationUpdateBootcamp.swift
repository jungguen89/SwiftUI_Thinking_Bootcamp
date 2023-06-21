//
//  AnimationUpdateBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/21.
//

import SwiftUI

struct AnimationUpdateBootcamp: View {
    
    @State private var animate1: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 40) {
                Button("Action 1") {
                    animate1.toggle()
                }
                Button("Action 2") {
                    
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity,
                               alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
            }
            // 기존의 animation은 전체적으로 적용이되었다면
            // 업데이트 된거는 value라는 부분에 애니메이션을 적용할 변수를 넣으면 된다. 
        }.animation(.linear(duration: 5.0), value: animate1)
    }
}

struct AnimationUpdateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationUpdateBootcamp()
    }
}
