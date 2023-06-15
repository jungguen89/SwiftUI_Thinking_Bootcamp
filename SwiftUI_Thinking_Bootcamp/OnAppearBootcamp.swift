//
//  OnAppearBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/06/15.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                
                // LazyVStack을 통해 아래 둥근 사각형의 형상을 만드는데
                // 지연 효과를 주었다.
                // count는 화면에 보이는 둥극 사각형의 숫자를 세는 걸로
                // 처음에는 6개만 표기하지만
                // 화면을 아래로 내리거나 올리면 count가 증가한다.
                // 단지 중복방지는 안된다.
                
                // 주로 사각형 부분에 이미지 같은게 나올 때
                // 화면에 보이는 이미지만 다운로드하기 위해서 주로 사용된다. 
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            
            // chage the view when it comes up
            // 이렇게만 작성하면 바로 화면에 보이기 때문에 변화의 차이를 모름
//            .onAppear(perform: {
//                myText = "This is the new Text!!"
//            })
            
            // DispatchQueue를 통해 시간 지연을 적용해서 5초 뒤에
            // 텍스트가 바뀌게 함
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
                    myText = "This is the new Text!!"
                }
            })
            .navigationTitle("On Appear \(count)")
        }
    }
}

struct OnAppearBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootcamp()
    }
}
