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
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.body)
                .fontWeight(.bold)  // 글자 두께 설정
                .underline()        //.밑줄
                .italic()           // 글자 기울기
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.body)
                .bold()             // 글자 두계 설정 (bold와 fontWeight 차이가 있다.)
                .strikethrough()    // 취소선
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.body)
                .underline(true, color: Color.red)   // 밑줄 + 색상 추가
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.body)
                .strikethrough(true, color: Color.red)   // 취소선 + 색상
        }
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
