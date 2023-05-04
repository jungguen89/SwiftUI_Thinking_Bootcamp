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
//            Circle()
//                .fill(Color.red)    // 색상 채우기
//
//            Circle()
//                .foregroundColor(.blue)    // 색상 채우기
//
//            Circle()
//                .stroke(Color.green, lineWidth: 10)    // 외곽선 보기 (색상과 선두계설정)
//
//            Circle()
//                .stroke(Color.purple,
//                        style: StrokeStyle(
//                            lineWidth: 10, lineCap: .butt,
//                            dash: [10]))              // 외곽선 설정 (스타일 적용)
            
//            Circle()
//                .trim(from: 0.25, to: 1)   // 형상 잘라내기
//                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [30]))
//                // trim과 stroke를 적절히 사용하면 로딩화면 표시기처럼 쓸수 있다.
            
            Capsule()
                .frame(width: 100, height: 200, alignment: .center)
            
            RoundedRectangle(cornerRadius: 10)
                .trim(from: 0, to: 0.2)
                .frame(width: 100, height: 100, alignment: .center)
            
            Rectangle()
                .trim(from: 0.1, to: 0.8)
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.red)
            
            Ellipse()
                .frame(width: 200, height: 150, alignment: .center)
        }
    }
}

struct ShapeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBootcamp()
    }
}
