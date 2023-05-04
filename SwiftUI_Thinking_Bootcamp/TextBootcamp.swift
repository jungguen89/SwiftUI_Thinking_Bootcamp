//
//  TextBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/05.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        VStack{
//            Text("body")
//                .font(.body)
//            Text("callout")
//                .font(.callout)
//            Text("caption")
//                .font(.caption)
//            Text("footnote")
//                .font(.footnote)
//            Text("headline")
//                .font(.headline)
//            Text("largeTitle")
//                .font(.largeTitle)
//            Text("subheadline")
//                .font(.subheadline)
//            Text("title")
//                .font(.title)
//            Text("title2")
//                .font(.title2)
//            Text("title3")
//                .font(.title3)
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .font(.body)
//                .fontWeight(.bold)  // 글자 두께 설정
//                .underline()        //.밑줄
//                .italic()           // 글자 기울기
//
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .font(.body)
//                .bold()             // 글자 두계 설정 (bold와 fontWeight 차이가 있다.)
//                .strikethrough()    // 취소선
//
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .font(.body)
//                .underline(true, color: Color.red)   // 밑줄 + 색상 추가
//
//            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                .font(.body)
//                .strikethrough(true, color: Color.red)   // 취소선 + 색상
            
//            Text("Hello world this is my first time to learn something awesome")
//                .font(.system(size: 30, weight: .bold, design: .monospaced))
//                // .system 수정자를 통한 글자 설정
//                //  보통은 font(.title)과 같이 사용합니다. 하지만 특정 사이즈를 원할 경우에는 위의 코드처럼 사용합니다.)
//                .multilineTextAlignment(.leading)   // 줄맞춤
//                .baselineOffset(20)    // 줄 간격
//                .kerning(1.5)   // 글자 간격
//
//            Text("Hello world this is my first time to learn something awesome")
//                .font(.system(size: 30, weight: .bold, design: .monospaced))
//                .multilineTextAlignment(.trailing)
//                .baselineOffset(-20)   // 줄 간격
            
            Text("Hello world this is my first time to learn something awesome".uppercased())
                // uppercased() 대문자화, lowercased() 소문자화
                .font(.system(size: 30, weight: .bold, design: .monospaced))
                .foregroundColor(.red)   // 색상 추가
                .frame(width: 150, height: 150, alignment: .center)  // 글자 상자 크기 및 정렬 설정
                .minimumScaleFactor(0.6)  // frame 크기와 맞게 글자 크기 정리 (최소화)
        }
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
