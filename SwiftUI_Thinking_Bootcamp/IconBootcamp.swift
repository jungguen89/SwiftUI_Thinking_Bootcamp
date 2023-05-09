//
//  IconBootcamp.swift
//  SwiftUI_Thinking_Bootcamp
//
//  Created by 권정근 on 2023/05/09.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        Image(systemName: "mic.badge.xmark")
            .renderingMode(.original)
            // frame으로 크기를 설정한 경우에는 resizable()를 넣어줘야 합니다.
            .resizable()
            //.aspectRatio(contentMode: .fill)   // 원본 크기 비율을 깨지 않는 범위내에서 크기 조절
            .scaledToFill()
            //.foregroundColor(Color.red)
            // 크기 조절하기
            //.font(.largeTitle)
            //.font(.system(size: 100))
            
            // frame으로 사이즈를 정할 경우에는, 아이콘이 이 크기에 맞게 설정할 수 있도록 해야 합니다.
            .frame(width: 200, height: 200)
            // frame을 벗어나는 부분에 대해서는 잘라냅니다.
    }
}

struct IconBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconBootcamp()
    }
}
