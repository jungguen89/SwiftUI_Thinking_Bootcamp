//
//  TransitionBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/02.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("BUTTON", action: {
                    withAnimation(.easeOut) {
                        showView.toggle()
                    }
                })
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    // 슬라이드 방식으로 화면에서 움직임
                    //.transition(.slide)
                
                    // 특정 방향으로 움직이게 설정함 (바닥)
                    //.transition(.move(edge: .bottom))
                
                    // 가운데로 움직이게 설정함
                    //.transition(.scale)
                
                    // 특정 방향으로 들어와서 특정 방향으로 나가게 함
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal:.move(edge: .bottom)))
                
                    // opacity를 통해 형상을 투명, 불투명으로 화면에 표시함
                    //.opacity(showView ? 1.0 : 0.0)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
