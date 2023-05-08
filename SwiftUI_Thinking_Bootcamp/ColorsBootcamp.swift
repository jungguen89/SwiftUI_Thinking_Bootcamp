//
//  ColorsBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/08.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.red   기본 색상 추가
//                Color(#colorLiteral(red: 1, green: 0, blue: 0, alpha: 1))    색상 추가
//                Color(UIColor.secondarySystemFill) 색상 추가
                Color("CustomizedColor") // 내가 만든 색상으로 추가
                
            )
            .frame(width: 200, height: 200)
            .shadow(color: Color.blue, radius: 25, x: 0, y: 20)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
    }
}
