//
//  ShapeBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/05.
//

import SwiftUI

struct ShapeBootcamp: View {
    var body: some View {
        VStack{
            Circle()
                .fill(Color.red)    // 색상 채우기
            
            Circle()
                .foregroundColor(.blue)    // 색상 채우기
            
            Circle()
                .stroke(Color.green, lineWidth: 10)    // 외곽선 보기 (색상과 선두계설정)
            
            Circle()
                .stroke(Color.purple,
                        style: StrokeStyle(
                            lineWidth: 10, lineCap: .butt,
                            dash: [10]))              // 외곽선 설정 (스타일 적용)
            
        }
    }
}

struct ShapeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBootcamp()
    }
}
